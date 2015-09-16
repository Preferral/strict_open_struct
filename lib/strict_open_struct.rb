require 'ostruct'

class StrictOpenStruct < OpenStruct
  # Raises NoMethodError if the called method is not a setter and was not explicitly initialized with a value.
  def method_missing(method_name, *args, &block)
    if respond_to?(method_name) || method_name =~ /=$/
      super
    else
      fail NoMethodError, "undefined method `#{method_name}' for #{self}"
    end
  end
end
