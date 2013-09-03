class New
  include MongoMapper::Document

  key :title, String
  key :web_urls, String
  key :created_at, Time

end
