class UsersController < ApplicationController
  def login
    
  end

  def create
    render json: user
  end

  private

  def user
    User.find_or_create_by(username: username)
  end

  def attributes_for_user
    params.require(:user).permit(:username)
  end

  def username
    attributes_for_user[:username]
  end
end
