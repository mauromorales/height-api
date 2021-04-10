class Height::Client
  def lists
    Height::API::Lists
  end

  def tasks
    Height::API::Tasks
  end

  def users
    Height::API::Users
  end
end
