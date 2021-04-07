module Height::Model
  class Task < Base
    def attributes
      [
        :id, :index, :list_ids, :name, :description, :status,
        :assignees_ids, :parent_task_id, :fields, :deleted, :deleted_at,
        :deleted_by_user_id, :completed, :completed_at, :created_at,
        :created_user_id, :last_activity_at, :url
      ]
    end

    def update(attrs)
      Height::API::Tasks.update_task(id, attrs)
    end
  end
end
