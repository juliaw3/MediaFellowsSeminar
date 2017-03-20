class AddCarouselImage3ToInternships < ActiveRecord::Migration[5.0]
  def change
    add_column :internships, :carouselImage3, :string
  end
end
