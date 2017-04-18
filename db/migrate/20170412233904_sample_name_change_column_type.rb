class SampleNameChangeColumnType < ActiveRecord::Migration[5.0]
  def change
  	change_column(:internships, :description, :textarea)
  end
end
