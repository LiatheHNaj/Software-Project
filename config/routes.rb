Rails.application.routes.draw do
  get 'characters', to: 'characters#index', as: 'characters'
  get 'characters/new', to: 'characters#new', as: 'new_character'
  post 'characters', to: 'characters#create'#, as: 'character/create'
  get 'characters/:id', to: 'characters#view', as: 'character'
  get 'characters/:id/edit', to: 'characters#edit', as: 'edit_character'#, as: 'character/edit'
  patch 'characters/:id', to: 'characters#update'#, as: 'character/update'
  put 'characters/:id', to: 'characters#update'
  delete 'characters/:id', to: 'characters#destroy'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'new', to: 'devise/sessions#new', as: 'login'
  get 'menu', to: 'home#menu', as: 'menu'
  root to: redirect('menu', status: 302)
end
