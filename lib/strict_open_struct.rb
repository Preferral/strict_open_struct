require 'ostruct'

class StrictOpenStruct

  def initialize(*args)
    @open_struct = OpenStruct.new(*args)
  end

  # Raises NoMethodError unless the underlying OpenStruct
  # responds to the method or the method is a setter
  def method_missing(method_name, *args, &block)
    if open_struct_responds_to?(method_name)
      @open_struct.send(method_name, *args, &block)
    else
      fail NoMethodError, "undefined method `#{method_name}' for #{self}"
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    open_struct_responds_to?(method_name)
  end

  def ==(other)
    @open_struct == other.instance_variable_get("@open_struct")
  end

  def [](key)
    self.send(key)
  end

  private

  def open_struct_responds_to?(method_name)
    @open_struct.respond_to?(method_name) || method_name =~ /=$/
  end

end
