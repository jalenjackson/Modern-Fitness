class ProfilesController < ApplicationController


  def index

  end

  def profile
    if User.find_by_username(params[:id])
      @user = User.find_by_username(params[:id])
    end
  end

  def followers
    if User.find_by_username(params[:id])
      @user = User.find_by_username(params[:id])
    end
  end

  end