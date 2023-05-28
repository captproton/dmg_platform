require 'sidekiq/web'

Rails.application.routes.draw do
  resources :navigations
  resources :events
  resources :platforms
  get 'marketing_pages/show'
  resources :blog_articles
  resources :leads
  resources :legals
  resources :posts

  get '/privacy',     to: 'home#privacy'
  get '/terms',       to: 'home#terms'

  get '/contact-us',  to: 'home#contact_us'
  get '/about-us',    to: 'home#about_us'
  get '/content',     to: 'home#content'
  get '/press',       to: 'home#press'
  get '/slider',      to: 'home#slider'

  get '/videos',   to: 'home#videos'
  get '/social_highlights',   to: 'home#social_highlights'

  resources  :podcasts,                 only: [:index, :show]
  resources  :blogs,                    only: [:index, :show]
  resources  :wallpapers,               only: [:index, :show]
  resources  :events,                   only: [:index, :show]
  resources  :books,                    only: [:index, :show]
  resources  :leads,                    only: [:new, :show]
  resources  :newsletter_subscription,  only: [:new, :show]
  resources  :marketing_pages,          only: [:show]
  resources  :events,                   only: [:index]

  authenticate :user do
    mount Avo::Engine, at: Avo.configuration.root_path
  end
  
authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
    resources :impersonates do
      post :impersonate, on: :member
      post :stop_impersonating, on: :collection
    end
  end
end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
