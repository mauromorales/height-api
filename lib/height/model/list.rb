module Height::Model
  class List < Base
    def attributes
      [:id, :type, :key, :description, :url, :appearence]
    end

    def tasks
      filters = {
        "listIds" => {
          "values" => [id]
        }
      }

      Height::API::Tasks.search(filters)
    end
  end
end
