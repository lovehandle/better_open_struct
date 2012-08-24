require "ostruct"

class BetterOpenStruct < OpenStruct

  def new_ostruct_member(name)
    name = name.to_sym

    unless self.respond_to?(name)
      class << self; self; end.class_eval do
        define_method(name)       { typecast(@table[name])   }
        define_method("#{name}=") { |x| modifiable[name] = x }
      end
    end

    name
  end

  private

  def typecast(value)
    case value
    when Hash
      self.class.new(value)
    when Array
      typecast_array(value)
    else
      value
    end
  end

  def typecast_array(values)
    values.map {|v| typecast(v) }
  end

end
