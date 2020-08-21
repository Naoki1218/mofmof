Rails.application.routes.draw do
  root to: 'appartments#index'
  resources :appartments
  resources :staitions
end
