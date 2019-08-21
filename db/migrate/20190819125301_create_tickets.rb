# :reek:FeatureEnvy and :reek:UncommunicativeVariableName and :reek:TooManyStatements

class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :project_id
      t.integer :status_id
      t.string :title
      t.text :description
      t.integer :estimation

      t.timestamps
    end
  end
end
