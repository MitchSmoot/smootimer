class SingleSolvesController < ApplicationController

  def index
    @single_solves = SingleSolve.all
  end

  def create
    @single_solve = SingleSolve.create(single_solve_params)
  end

  private

  def single_solve_params
    params.require(:single_solve).permit(:user_id, :event, :solve_time, :solve_date)
  end

end