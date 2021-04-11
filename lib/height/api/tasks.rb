class Height::API::Tasks
  class << self
    def search(filter, incl = nil)
      query = { 'filters' => filter.to_json }

      query.merge!({ 'include' => incl.to_json }) if incl

      res = Height::Request.get('tasks', query)

      Height::ListResponse.parse(res.body)
    end

    def get(id_or_index)
      res = Height::Request.get("tasks/#{id_or_index}")

      Height::Response.parse(res.body)
    end

    def update_task(id_or_index, data)
      res = Height::Request.put("tasks/#{id_or_index}", data)

      Height::Response.parse(res.body)
    end
  end
end

