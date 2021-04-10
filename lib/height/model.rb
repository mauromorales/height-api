require 'height/model/base'
require 'height/model/activity'
require 'height/model/list'
require 'height/model/task'

module Height::Model
  def self.for(attrs)
    model = attrs['model'].capitalize

    Object.const_get("Height::Model::#{model}").new(attrs)
  end
end
