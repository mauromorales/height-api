class Height::API::Lists
  class << self
    def list
      res = Height::Request.get('lists')

      Height::ListResponse.parse(res.body)
    end
  end
end
