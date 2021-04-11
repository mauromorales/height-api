require 'height/model/base'
require 'height/model/activity'
require 'height/model/list'
require 'height/model/task'
require 'height/model/user'

module Height::Model
  def self.for(attrs)
    model = attrs['model'].capitalize

    model = attrs['type'].capitalize if model == 'View'

    Object.const_get("Height::Model::#{model}").new(attrs)
  end
end
