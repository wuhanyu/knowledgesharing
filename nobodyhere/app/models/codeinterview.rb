class Codeinterview
  include MongoMapper::Document

  key :company, String
  key :content, String
  key :created_at, Time

end
