# :reek:FeatureEnvy
# :reek:UncommunicativeVariableName
# :reek:TooManyStatements

class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.text :description
      t.text :BItem
      t.text :events
    end
  end
end
