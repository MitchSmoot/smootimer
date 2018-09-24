Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get 'timer/practice'
  get 'timer/2x2'
  get 'timer/3x3'
  get 'timer/4x4'
  get 'timer/5x5'
  get 'timer/6x6'
  get 'timer/7x7'
  get 'timer/pyraminx'
  get 'timer/megaminx'
  get 'timer/skewb'
  get 'timer/square_one'
  get 'timer/3x3oh'
  get 'timer/3x3feet'
  get 'timer/3bld'
  get 'timer/4bld'
  get 'timer/5bld'
  get 'timer/clock'
  get 'pages/home'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :single_solves
end
