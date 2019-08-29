class RemoveFreqInEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :frequency
  end
end
