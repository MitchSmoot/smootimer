class SingleSolvesController < ApplicationController

  def index
    @single_solves = SingleSolve.all
  end

  def create
    SingleSolve.create(single_solve_params)
    redirect_to timer_3x3_path
  end

  def destroy
    single_solve = SingleSolve.find(params[:id])
    single_solve.destroy
    redirect_to timer_3x3_path
  end

  private

    def single_solve_params
      params.require(:single_solve).permit(:user_id, :event, :solve_time, :solve_date)
    end

end