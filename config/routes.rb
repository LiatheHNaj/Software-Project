Rails.application.routes.draw do
  get 'characters_new', to: 'characters#new', as: 'characters_new'
  get 'characters', to: 'characters#view', as: 'characters'
  get 'login', to: 'home#login', as: 'login'
  get 'menu', to: 'home#menu', as: 'menu'
  root to: redirect('/login', status: 302)
end
