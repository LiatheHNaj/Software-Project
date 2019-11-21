Rails.application.routes.draw do
  get 'characters_new', to: 'characters#new', as: 'characters_new'
  post 'characters', to: 'characters#view', as: 'character'
  get 'characters', to: 'characters#view', as: 'characters'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'new', to: 'devise/sessions#new', as: 'login'
  get 'menu', to: 'home#menu', as: 'menu'
  root to: redirect('menu', status: 302)
end
