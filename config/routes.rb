require 'sidekiq/web'

Rails.application.routes.draw do
  
  devise_for :users
  mount Leather::Engine => '/'
  # mount Storytime::Engine => "/"
  mount Sidekiq::Web, at: '/sidekiq'
end
