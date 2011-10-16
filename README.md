# OAuth 2 Provider Test Application

A sample OAuth 2 Provider application using Rails 3.1, Devise and Devise OAuth 2 Providable

# Apps & Gems sources

* https://github.com/ZenCocoon/testoauth2provider
* https://github.com/ZenCocoon/testoauth2client
* https://github.com/ZenCocoon/omniauth-testoauth2strategy

# Live Applications

* OAuth 2 Provider Test App: https://testoauth2provider.herokuapp.com
* OAuth 2 Client Test App: https://testoauth2client.herokuapp.com

# Testing in local

To test it in local, you will need to register the new client application on the provider application like follow

    Devise::Oauth2Providable::Client.create(
      :name => 'Test App',
      :redirect_uri => 'http://0.0.0.0:3000/auth/testoauth2strategy/callback',
      :website => 'http://0.0.0.0:3000'
    )

You will then need to use the generated `identifier` and `secret_key` in the client application's omniauth initializer.