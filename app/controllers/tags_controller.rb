class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render json: @tags.as_json
  end

  def create
    @post = Post.find(params[:post_id])
    @tag = Tag.find_or_create(params.require(:tag).permit(:name))
    if @post
      @post.tags << @tag
    end
    render json: @tag.as_json
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy.inspect
    render nothing: true, status: 204
  end
end
