class TimerController < ApplicationController

  def chart_times
    Solve.last.solve_time
  end
end
