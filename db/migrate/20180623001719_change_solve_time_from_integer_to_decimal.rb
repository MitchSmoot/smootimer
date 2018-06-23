class ChangeSolveTimeFromIntegerToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :solves, :solve_time, :decimal
  end
end
