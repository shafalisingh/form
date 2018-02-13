Rails.application.routes.draw do
  resources :attach_files
  resources :file_attachments
  resources :attachments
  resources :scrapy_configs
  resources :clients
  root 'scrapy_configs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
