# :reek:TooManyStatements
class NewColumsInEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :user_id
    remove_column :events, :name
    add_column :events, :type, :integer
    add_column :events, :date, :date
    add_column :events, :frequency, :integer
    add_column :events, :time, :time
  end
end
