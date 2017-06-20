class Pair
  attr_reader :key
  attr_accessor :value

  def initialize(key, value)
    @key = key
    @value = value
  end

  def ==(other)
    other.class == self.class && other.attrs == self.attrs
  end

  def hash
    attrs.hash
  end

  alias_method :eql?, :==

  protected

  def attrs
    [@key, @value]
  end
end
