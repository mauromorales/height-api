module Height::Model
  class Base
    def initialize(attrs)
      self.attributes.each do |key|
        self.instance_variable_set("@#{key}", attrs[key.to_s])
        define_singleton_method(key) do
          self.instance_variable_get("@#{key}")
        end
      end
    end
  end
end
