class TimerController < ApplicationController

  def chart_times
    event = "3x3"
    solves = SingleSolve.all
    time_array = []
    solves.each do |solve|
    time_array.push(solve.solve_time) if (solve.event == event)
    end
    time_array
  end
  helper_method :chart_times
end
