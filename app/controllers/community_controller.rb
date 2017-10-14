class CommunityController < ApplicationController
  def index
    @users = User.all.paginate(page: params[:page], per_page: 15)
  end
end
