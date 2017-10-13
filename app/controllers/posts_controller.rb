class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy, :vote]
  respond_to :js, :json, :html

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    if current_user.nil?
      redirect_to user_session_path
    else
      @post = current_user.posts.build
    end

  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    # @post = Post.find(params[:id])
  end

  def edit
  end

  def vote
    if !current_user.liked? @post
      @post.liked_by current_user
    elsif current_user.liked? @post
      @post.unliked_by current_user
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to @post
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
