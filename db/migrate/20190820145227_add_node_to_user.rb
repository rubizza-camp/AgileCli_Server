class AddNodeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :node, :string
  end
end
