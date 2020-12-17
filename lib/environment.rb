
module ChoosingShows
  class Error < StandardError; end
  # Your code goes here...
end

require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'tty-color'
require 'tty-prompt'

require_relative './choosing_shows/api.rb'
require_relative './choosing_shows/cli.rb'
require_relative './choosing_shows/retail_store.rb'
require_relative './choosing_shows/business_types.rb'
require_relative "./choosing_shows/version"
