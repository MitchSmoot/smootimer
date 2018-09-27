module TimerHelper

  def chart_times
    event = $current_event
    user = current_user.id
    solves = SingleSolve.all
    time_array = []
    solves.each do |solve|
    time_array.push(solve.solve_time) if (solve.event == event) && (solve.user_id == user)
    end
    time_array
  end


  def format_milliseconds(m)
    secs, milisecs = m.divmod(1000)
    mins, secs = secs.divmod(60)
    hours, mins = mins.divmod(60)

    #[mins,secs,milisecs].map { |e| e.to_s.rjust(2,'0') }.join ':'
    (mins.to_s + ":" + secs.to_s + "." + milisecs.to_s)
  end

  def time_table(times)
    table_array = []
    times.each do |t|
      if table_array.length <= 24
        table_array.unshift(t)
      end
    end
    table_array
  end

end
