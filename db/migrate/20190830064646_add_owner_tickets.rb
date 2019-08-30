class AddOwnerTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :owner, :string
  end
end
