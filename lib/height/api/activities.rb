class Height::API::Activities
  class << self
    def list(query)
      res = Height::Request.get('activities', query)

      Height::ListResponse.parse(res.body)
    end
  end
end
