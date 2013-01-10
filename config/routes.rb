TestOAuth2Provider::Application.routes.draw do
  get "me" => 'users#me'

  devise_for :users
  mount Devise::Oauth2Providable::Engine => '/oauth2'

  root :to => 'home#index'
end
