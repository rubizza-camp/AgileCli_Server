class DropUselessTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :tickets
    drop_table :users_and_projects
  end
end
