class UsersController < ApplicationController
  before_filter :authenticate_user!

  def me
    render :json => current_user.as_json(:only => [:id, :email])
  end
end
