class DeleteTimestamps < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :created_at, :datetime
    remove_column :users, :updated_at, :datetime
    remove_column :projects, :created_at, :datetime
    remove_column :projects, :updated_at, :datetime
  end
end
