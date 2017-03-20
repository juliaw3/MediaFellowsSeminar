class AddCarouselImage2ToInternships < ActiveRecord::Migration[5.0]
  def change
    add_column :internships, :carouselImage2, :string
  end
end
