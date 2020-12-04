require_relative "./choosing_shows/version"
require 'net/http'
require_relative './choosing_shows/api.rb'
require_relative './choosing_shows/cli.rb'
require_relative './choosing_shows/stores.rb'
require 'awesome_print'

module ChoosingShows
  class Error < StandardError; end
  # Your code goes here...
end
