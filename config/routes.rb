require 'sidekiq/web'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  get '/styleguide', to: "styleguide#show"

  mount Sidekiq::Web => (ENV['SIDEKIQ_PATH'] || '/sidekiq')
end
