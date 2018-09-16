class SingleSolvesController < ApplicationController

  def index
    @single_solves = SingleSolve.single_solves_by(current_user)
  end

  def create
      SingleSolve.create(single_solve_params)
  end

  private

  def single_solve_params
    params.require(:single_solve).permit(:user_id, :event, :solve_time, :solve_date)
  end

end