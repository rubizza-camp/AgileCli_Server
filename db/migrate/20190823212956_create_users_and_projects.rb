class CreateUsersAndProjects < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users_and_projects, id: false do |t|
      t.belongs_to :user
      t.belongs_to :project
    end
  end
end
