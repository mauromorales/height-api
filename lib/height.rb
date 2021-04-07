require 'json'
require 'net/http'

require 'height/api'
require 'height/client'
require 'height/response'
require 'height/list_response'
require 'height/model'
require 'height/request'

module Height
  class << self
    def new
      Height::Client.new
    end
  end
end
