# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"

  mount ShopifyApp::Engine, at: "/api"
  get "/api", to: redirect(path: "/") # Needed because our engine root is /api but that breaks FE routing

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get "/api/products/count", to: "products#count"
  # get "/api/products/create", to: "products#create"

  get '/api/toolkit_assets/shop_config', to: 'toolkit_assets#shop_config'
  get '/api/toolkit_assets/framework', to: 'toolkit_assets#framework'

  get '/api/shop_config', to: 'shop_configs#index'
  post '/api/shop_config', to: 'shop_configs#update'

  post '/api/webhooks/shop_redact', to: 'webhooks#shop_redact'
  post '/api/webhooks/customers_redact', to: 'webhooks#customers_redact'
  post '/api/webhooks/customers_data_request', to: 'webhooks#customers_data_request'
  post '/api/webhooks/app_uninstalled', to: 'webhooks#app_uninstalled'
  
  # Any other routes will just render the react app
  match "*path" => "home#index", via: [:get, :post]
end
