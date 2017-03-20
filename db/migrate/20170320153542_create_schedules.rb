class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.integer :studentId
      t.string :eventName
      t.text :description

      t.timestamps
    end
  end
end
