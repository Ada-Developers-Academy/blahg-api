class Tag
  include MongoMapper::Document

  key :name, String

  def posts
    Post.where(tag_ids: id).all
  end

end
