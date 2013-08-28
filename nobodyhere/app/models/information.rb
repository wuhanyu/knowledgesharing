class Information
  include MongoMapper::Document

  key :company, String
  key :type, String
  key :created_at, Time
  key :salary, Integer
  key :comment, String

end
