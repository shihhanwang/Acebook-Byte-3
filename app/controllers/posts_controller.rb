class PostsController < ApplicationController

  before_action :authenticate_user!

  def add_like
    @like = Like.new()
    @like.post_id = params['post_id']
    @like.user_id = current_user.id
    @like.save
    redirect_to posts_url
  end

  def show_likes
    puts 'Showing likes..'
    puts params
    Like.count.select { |like| like.post_id == params['post_id'] }
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.create(post_params)
    redirect_to posts_url
  end

  def edit

    @postid = Post.find(params[:id]).user_id
    if current_user.id == @postid
      @post = Post.find(params[:id])
    else
      redirect_to posts_url
    end

  end

  def update
    @postid = Post.find(params[:id])
    @post = @postid.update(post_params)
    redirect_to posts_url
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end

  def index
    @posts = Post.all.reverse
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
