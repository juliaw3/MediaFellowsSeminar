class AddLocationToInternships < ActiveRecord::Migration[5.0]
  def change
    add_column :internships, :location, :string
  end
end
