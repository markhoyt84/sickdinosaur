require_relative '../../config/application.rb'

class CreateTableDatabases < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string  :name
      t.integer :score
      t.timestamps
    end

    # create_table :phrases do |t|
	   #  t.phrase
	   #  t.timestamps
    # end
  end
end