module Height::Model
  class Activity < Base
    def attributes
      [:id, :created_at, :task_id, :created_user_id, :type, :message,
       :old_value, :new_value, :reactjis, :read_user_ids, :url]
    end
  end
end
