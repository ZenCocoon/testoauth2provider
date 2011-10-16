TestOAuth2Provider::Application.routes.draw do
  devise_for :users
  mount Devise::Oauth2Providable::Engine => '/oauth2'

  get "home/index"

  root :to => 'home#index'
end
