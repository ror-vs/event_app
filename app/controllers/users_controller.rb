class UsersController < ApplicationController
  def show
    redirect_to new_user_session_path
  end
end
