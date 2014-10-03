require_relative '../../config/application.rb'

class CreatePhrase < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.integer :score
      t.timestamps
    end

    create_table :games do |t|
	    t.string :games, :file_name
	    t.timestamps
    end

  end
end