Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'login', to: 'home#login', as: 'login'
  get 'menu', to: 'home#menu', as: 'menu'
  root to: redirect('/login', status: 302)
end
