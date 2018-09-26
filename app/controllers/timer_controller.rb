class TimerController < ApplicationController
  def index
    @single_solves = SingleSolve.where(user: current_user)
  end

  def ThreeByThree
    @list_solves = SingleSolve.where(user: current_user, event: $current_event)
  end
end
