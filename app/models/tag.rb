class Tag
  include MongoMapper::Document

  key :name, String

  def self.find_or_create(attrs={})
    self.find_one(attrs) || self.create(attrs)
  end

  def posts
    Post.where(tag_ids: id).all
  end

end
