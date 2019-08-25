# :reek:FeatureEnvy:UncommunicativeVariableName:

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :github_login, null: false
    end
  end
end
