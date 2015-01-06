class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render json: @tags.as_json
  end

  def create
    @tag = Tag.new(params.require(:tag).permit!)
    @tag.save
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy.inspect
    render nothing: true, status: 204
  end
end
