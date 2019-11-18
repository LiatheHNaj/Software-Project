Rails.application.routes.draw do
  get 'characters', to: 'characters#new', as: 'characters'
  post 'characters', to: 'static_pages#leave_feedback', as: 'leave_feedback'
  get 'login', to: 'home#login', as: 'login'
  get 'menu', to: 'home#menu', as: 'menu'
  root to: redirect('/login', status: 302)
end
