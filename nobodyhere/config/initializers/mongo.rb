MongoMapper.connection = Mongo::Connection.new('42.121.98.220', 22222)
MongoMapper.database = "nobodyhere-#{Rails.env}"

if defined?(PhusionPassenger)
  PhusionPassenger.on_event(:starting_worker_process) do |forked|
    MongoMapper.connection.connect if forked
  end
end