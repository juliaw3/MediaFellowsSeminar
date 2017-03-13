class CreateInternships < ActiveRecord::Migration[5.0]
  def change
    create_table :internships do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :name
      t.string :location
      t.string :title
      t.string :company
      t.string :date
      t.string :description

      t.timestamps
    end
  end
end
