Rails.application.routes.draw do
  get 'characters_spell/index'
  get 'characters_spell/show'
  get 'characters', to: 'characters#index', as: 'characters'
  get 'characters/new', to: 'characters#new', as: 'characters/new'
  post 'characters', to: 'characters#create', as: 'character/create'
  get 'characters/:id', to: 'characters#view', as: 'character'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'new', to: 'devise/sessions#new', as: 'login'
  get 'menu', to: 'home#menu', as: 'menu'
  root to: redirect('menu', status: 302)
end
