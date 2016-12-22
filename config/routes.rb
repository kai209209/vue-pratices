Rails.application.routes.draw do
  devise_for :users
  mount ActionCable.server => '/cable'
  root 'statics#index'
  get 'statics/vid'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
