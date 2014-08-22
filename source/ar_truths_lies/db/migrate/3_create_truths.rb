#require_relative '../../config/application'

class CreateTruths < ActiveRecord::Migration
  def change
    create_table :truths do |col|
      col.string :description, null: false, length: 250
      col.timestamps
      #PERSON ID will be created through association
    end
  end
end