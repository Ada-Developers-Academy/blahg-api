class Post
  include MongoMapper::Document

  key :title, String
  key :date, DateTime
  key :content, String
  key :tag_ids, Array
  many :tags, in: :tag_ids
end
