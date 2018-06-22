class CreateSolves < ActiveRecord::Migration[5.2]
  def change
    create_table :solves do |t|
      t.string :user
      t.string :event
      t.string :puzzle
      t.integer :solve_time
      t.datetime :solve_date
      t.text :note, optional: true
      t.text :scramble

      t.timestamps
    end
  end
end
