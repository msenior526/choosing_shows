require_relative "./choosing_shows/version"
require 'net/http'
require_relative './choosing_shows/api.rb'
require_relative './choosing_shows/cli.rb'
require_relative './choosing_shows/retail_store.rb'
require_relative './choosing_shows/business_types.rb'


module ChoosingShows
  class Error < StandardError; end
  # Your code goes here...
end
