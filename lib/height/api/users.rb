class Height::API::Users
  class << self
    def list
      res = Height::Request.get('users')

      Height::ListResponse.parse(res.body)
    end
  end
end
