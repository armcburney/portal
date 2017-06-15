Rails.application.routes.draw do
  # About controller
  get 'about', to: 'about#index'

  # Admin controller
  get 'admin', to: 'admin#index'
  get 'admin/settings'
  get 'admin/admin_settings'

  namespace :admin do
    resources :settings
  end

  # Articles controller
  get 'articles/index'
  resources :articles

  # Contacts controller
  get 'contact', to: 'contact#index'
  post 'contact', to: 'contact#send_mail'
  get 'contact/send_mail'

  # Root route
  root 'articles#index'

  # MathJax library
  mathjax 'mathjax'
end
