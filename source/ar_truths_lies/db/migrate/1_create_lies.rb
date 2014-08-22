#require_relative '../../config/application'

class CreateLies < ActiveRecord::Migration
  def change
    create_table :lies do |col|
      col.string :description, null: false, length: 250
      col.belongs_to :student
      col.timestamps
      #PERSON ID will be created through association
    end
  end
end