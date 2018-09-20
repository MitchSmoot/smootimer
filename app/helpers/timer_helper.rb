module TimerHelper
    def chart_times
    event = @current_event
    user = current_user.id
    solves = SingleSolve.all
    time_array = []
    solves.each do |solve|
    time_array.push(solve.solve_time) if (solve.event == event) && (solve.user_id == user)
    end
    time_array
  end
end
