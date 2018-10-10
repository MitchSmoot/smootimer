Rails.application.routes.draw do
  resources :single_solves
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get 'timer/practice'
  get 'timer/TwoByTwo'
  get 'timer/ThreeByThree'
  get 'timer/FourByFour'
  get 'timer/FiveByFive'
  get 'timer/SixBySix'
  get 'timer/SevenBySeven'
  get 'timer/pyraminx'
  get 'timer/megaminx'
  get 'timer/skewb'
  get 'timer/square_one'
  get 'timer/ThreeByThree_oh'
  get 'timer/ThreeByThree_feet'
  get 'timer/three_bld'
  get 'timer/four_bld'
  get 'timer/five_bld'
  get 'timer/clock'
  get 'pages/home'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :single_solves
  end
end
