# :reek:FeatureEnvy:UncommunicativeVariableName:

class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.text :description
    end
  end
end
