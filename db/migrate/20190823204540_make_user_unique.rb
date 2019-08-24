class MakeUserUnique < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :github_login, unique: true
  end
end
