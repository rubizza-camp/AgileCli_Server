class EditTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :description, :string
  end
end
