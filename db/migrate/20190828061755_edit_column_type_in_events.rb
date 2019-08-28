class EditColumnTypeInEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :type
    add_column :events, :event_type, :integer
  end
end
