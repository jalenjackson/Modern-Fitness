class HomeController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @articles = Article.all
    @posts = Post.all.order("created_at DESC")
    @users = User.all.order("created_at DESC")
  end
end
