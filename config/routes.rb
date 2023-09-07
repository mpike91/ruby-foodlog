Rails.application.routes.draw do
  get 'archives/index'
  resources :entries
  root "entries#index"
end
