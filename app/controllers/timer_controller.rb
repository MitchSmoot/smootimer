class TimerController < ApplicationController

  def chart_times
    solves = SingleSolve.all
    time_array = []
    solves.each do |solve|
    time_array.push(solve.solve_time)
    end
    time_array
  end
  helper_method :chart_times
end
