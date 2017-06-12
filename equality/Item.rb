class Item
  attr_reader :name, :calories, :ingredients

  def initialize(name, calories, ingredients)
    @name = name
    @calories = calories
    @ingredients = ingredients
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
    [@name, @calories, @ingredients]
  end
end
