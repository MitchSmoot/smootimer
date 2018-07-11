class ChangeSolveTimeFromDecimalToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :solves, :solve_time, :integer 
  end
end
