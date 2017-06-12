Rails.application.routes.draw do
  # Contacts controller
  get  'contact/index'
  post 'contact/index', to: 'contact#send_mail'
  get  'contact/send_mail'

  # Articles controller
  get  'articles/index'

  # Root route
  root 'articles#index'
end
