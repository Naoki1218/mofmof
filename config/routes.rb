Rails.application.routes.draw do
  get 'staitions/index'
  get 'staitions/new'
  get 'staitions/edit'
  get 'staitions/destroy'
  get 'staitions/update'
  get 'staitions/create'
  resources :appartment
end
