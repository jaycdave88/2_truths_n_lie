#require_relative '../../config/application'

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |col|
      col.string :first_name, null: false, length: 50
      col.string :last_name, null: false, length: 50
      col.timestamps
    end
  end
end