Rails.application.routes.draw do
  root to: 'links#index'

  resources :links, only: [:index, :create]
  get 'links/generate_url'
  get '/:tiny_url', to: 'links#show'
end
