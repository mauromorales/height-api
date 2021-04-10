module Height::Model
  class User < Base
    def attributes
      [:id, :state, :email, :username, :firstname, :lastname, :access, :created_at, :picture_url]
    end
  end
end
