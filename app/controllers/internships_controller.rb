class InternshipsController < ApplicationController
  before_action :set_internship, only: [:show, :edit, :update, :destroy]


  # GET /internships
  # GET /internships.json
  

  def index
    @internships = Internship.all
    
    @internship_properties = Array.new
    @internships.each do |internship|
      @internship_properties.push(internship)
    end

   
    @hash = Gmaps4rails.build_markers(@internship_properties) do |internship_prop, marker|
      #concat_info_window = "Name: #{internship_prop.name}, Location: #{internship_prop.address}, Company: #{internship_prop.company}, Role: #{internship_prop.title}, Date: #{internship_prop.date}, Description: #{internship_prop.description}"
      marker.lat internship_prop.latitude
      marker.lng internship_prop.longitude
    
      #marker.infowindow concat_info_window 
      marker.infowindow render_to_string(:partial => "/internships/info", :locals => { :internship => @internship, :internship_prop => internship_prop.company, :internship_prop2 => internship_prop.name})

    end
  end



  # GET /internships/1
  # GET /internships/1.json
  def show
    respond_with(@internship, :layout => !request.xhr?)
  end

  # GET /internships/new
  def new
    @internship = Internship.new
  end

  # GET /internships/1/edit
  def edit
  end

  # POST /internships
  # POST /internships.json
  def create
    @internship = Internship.new(internship_params)

    respond_to do |format|
      if @internship.save
        format.html { redirect_to @internship, notice: 'Internship was successfully created.' }
        format.json { render :show, status: :created, location: @internship }
      else
        format.html { render :new }
        format.json { render json: @internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internships/1
  # PATCH/PUT /internships/1.json
  def update
    respond_to do |format|
      if @internship.update(internship_params)
        format.html { redirect_to @internship, notice: 'Internship was successfully updated.' }
        format.json { render :show, status: :ok, location: @internship }
      else
        format.html { render :edit }
        format.json { render json: @internship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internships/1
  # DELETE /internships/1.json
  def destroy
    @internship.destroy
    respond_to do |format|
      format.html { redirect_to internships_url, notice: 'Internship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internship
      @internship = Internship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internship_params
      params.require(:internship).permit(:latitude, :longitude, :name, :address, :title, :company, :date, :description)
    end
end