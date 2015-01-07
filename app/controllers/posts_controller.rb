class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts.as_json
  end

  def create
    @post = Post.new(params.require(:post).permit!)
    @post.save
    render json: @post.as_json
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy.inspect
    render nothing: true, status: 204
  end
end
