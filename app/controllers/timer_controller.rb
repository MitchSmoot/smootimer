class TimerController < ApplicationController

  def initialize
    @start_time = 0
    @end_time = 0
    @timing = false
  end

  def timer
    if @timing == false

      @start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      @timing = true

    else

      @end_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      create_time
    end
  end

  def create_time
    Solve.create!(
      user: "Mitch",
      event: "3x3",
      puzzle: "M3",
      solve_time: @start_time - @end_time,
      solve_date: Date.today,
      note: "Blah",
      scramble: "R U' R' U"
    )
  end
end
