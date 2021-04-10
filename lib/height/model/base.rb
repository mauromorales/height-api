require 'dry/inflector'

module Height::Model
  class Base
    def initialize(attrs)
      inflector = Dry::Inflector.new

      self.attributes.each do |name|
        key = inflector.camelize_lower(name.to_s)

        self.instance_variable_set("@#{name}", attrs[key])
        define_singleton_method(name) do
          self.instance_variable_get("@#{name}")
        end
      end
    end
  end
end
