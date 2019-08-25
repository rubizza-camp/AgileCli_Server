# :reek:FeatureEnvy:UncommunicativeVariableName:

class CreateUserProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :userprojects, id: false do |t|
      t.integer :user_id
      t.integer :project_id
    end
  end
end
