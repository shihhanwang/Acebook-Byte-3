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

  def index
    @posts = Post.all.order(created_at: :asc)
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
