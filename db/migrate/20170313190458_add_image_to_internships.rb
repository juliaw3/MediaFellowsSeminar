class AddImageToInternships < ActiveRecord::Migration[5.0]
  def change
    add_column :internships, :image, :string
  end
end
