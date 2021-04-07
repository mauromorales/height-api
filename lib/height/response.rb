class Height::Response
  class << self
    def parse(json)
      response = JSON.parse(json)
      Height::Model.for(response)
    end
  end
end
