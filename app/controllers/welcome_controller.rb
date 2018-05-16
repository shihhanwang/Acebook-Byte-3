class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      @user = current_user
      redirect_to user_wall_path(@user.id)
    end
  end
end
