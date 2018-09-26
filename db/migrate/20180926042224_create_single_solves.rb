class CreateSingleSolves < ActiveRecord::Migration[5.2]
  def change
    create_table :single_solves do |t|
      t.references :user, foreign_key: true
      t.string :event
      t.integer :solve_time
      t.datetime :solve_date

      t.timestamps
    end
  end
end