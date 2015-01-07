class TagsController < ApplicationController
  before_action :find_post

  def index
    @tags = Tag.all
    render json: @tags.as_json
  end

  def show
    @tag = Tag.find(params[:id])
    render json: @tag.as_json
  end

  def create
    @tag = Tag.find_or_create(params.require(:tag).permit(:name))
    if @post
      @post.tags << @tag
    end
    render json: @tag.as_json
  end

  def destroy
    @tag = Tag.find(params[:id])
    if @post
      @post.tags.delete @tag
    else
      @tag.destroy
    end
    render nothing: true, status: 204
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
