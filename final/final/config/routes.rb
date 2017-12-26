Rails.application.routes.draw do
  resources :clients
  resources :scrapy_configs
  root 'scrapy_configs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
