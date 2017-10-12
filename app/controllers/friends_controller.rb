class FriendsController < ApplicationController
  def index
    @user = current_user

    if !current_user
      redirect_to "/"
    end
  end
end
