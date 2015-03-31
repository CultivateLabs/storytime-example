require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  mount Leather::Engine => '/leather'
  mount Sidekiq::Web, at: '/sidekiq'
  mount Storytime::Engine => '/'
end
