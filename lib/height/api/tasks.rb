class Height::API::Tasks
  class << self
    def search(filter)
      query = { 'filters' => filter.to_json }
      res = Height::Request.get('tasks', query)

      Height::ListResponse.parse(res.body)
    end

    def get(id_or_index)
      res = Height::Request.get("tasks/#{id_or_index}")

      Height::Response.parse(res.body)
    end
  end
end

