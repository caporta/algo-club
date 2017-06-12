class Ingredient
  attr_reader :name

  def initialize(name)
    @name = name
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
    [@name]
  end
end
