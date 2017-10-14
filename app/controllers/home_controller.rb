class HomeController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @articles = Article.all.order("created_at DESC").limit(6)
    @posts = Post.all.order("created_at DESC").limit(6)
    @users = User.all.order("created_at DESC")
  end
end
