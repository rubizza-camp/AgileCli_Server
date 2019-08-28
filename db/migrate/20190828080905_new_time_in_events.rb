class NewTimeInEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events,:time
    add_column :events, :start_time, :time
    add_column :events, :end_time, :time
  end
end
