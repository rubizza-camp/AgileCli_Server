class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.text :description
      t.text :BItem
      t.text :events

      t.timestamps
    end

    change_column_null :users, :name, true
    change_column_null :users, :github, false
  end
end
