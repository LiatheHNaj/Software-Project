Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'new', to: 'devise/sessions#new', as: 'login'
  get 'characters', to: 'characters#new', as: 'characters'
  get 'menu', to: 'home#menu', as: 'menu'
  root to: redirect('menu', status: 302)
end
