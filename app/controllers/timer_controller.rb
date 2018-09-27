class TimerController < ApplicationController
  def index
    @single_solves = SingleSolve.where(user: current_user)
    @list_solves = SingleSolve.where(user: current_user, event: $current_event)

  end

  def TwoByTwo
    @list_solves = SingleSolve.where(user: current_user, event: "2x2")
  end
  def ThreeByThree
    @list_solves = SingleSolve.where(user: current_user, event: "3x3")
  end
  def FourByFour
    @list_solves = SingleSolve.where(user: current_user, event: "4x4")
  end
  def FiveByFive
    @list_solves = SingleSolve.where(user: current_user, event: "5x5")
  end
  def SixBySix
    @list_solves = SingleSolve.where(user: current_user, event: "6x6")
  end
  def SevenBySeven
    @list_solves = SingleSolve.where(user: current_user, event: "7x7")
  end
  def pyraminx
    @list_solves = SingleSolve.where(user: current_user, event: "Pyraminx")
  end
  def megaminx
    @list_solves = SingleSolve.where(user: current_user, event: "Megaminx")
  end
  def square_one
    @list_solves = SingleSolve.where(user: current_user, event: "Square-1")
  end
  def clock
    @list_solves = SingleSolve.where(user: current_user, event: "Clock")
  end
  def ThreeByThree_oh
    @list_solves = SingleSolve.where(user: current_user, event: "3x3 One-Handed")
  end
  def ThreeByThree_feet
    @list_solves = SingleSolve.where(user: current_user, event: "3x3 With Feet")
  end
  def three_bld
    @list_solves = SingleSolve.where(user: current_user, event: "3x3 Blindfolded")
  end
  def four_bld
    @list_solves = SingleSolve.where(user: current_user, event: "4x4 Blindfolded")
  end
  def five_bld
    @list_solves = SingleSolve.where(user: current_user, event: "5x5 Blindfolded")
  end
end
