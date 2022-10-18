class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |method_name|

      define_method(method_name) do 
        self.instance_variable_get("@#{method_name}")
      end

      define_method("#{method_name}=") do |setter|
        self.instance_variable_set("@#{method_name}", setter)
      end
    end
  end
end
