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

  def articles
    if User.find_by_username(params[:id])
      @user = User.find_by_username(params[:id])
      @articles = @user.articles.paginate(page: params[:page], per_page: 12)
    end
  end

  def questions
    if User.find_by_username(params[:id])
      @user = User.find_by_username(params[:id])
      @posts = @user.posts.paginate(page: params[:page], per_page: 12)

    end
  end

  end