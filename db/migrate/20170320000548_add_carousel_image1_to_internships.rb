class AddCarouselImage1ToInternships < ActiveRecord::Migration[5.0]
  def change
    add_column :internships, :carouselImage1, :string
  end
end
