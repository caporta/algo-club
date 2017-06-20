require_relative 'pair'

class CustomHash
  TABLE_SIZE = 11

  def initialize()
    @table = []
  end

  def get(key)
    hash = key.hash % TABLE_SIZE
    bin = @table[hash] ||= []

    result = bin.find do |pair|
      pair.key.eql?(key)
    end

    result.value if result
  end

  def put(key, value)
    hash = key.hash % TABLE_SIZE
    bin = @table[hash] ||= []

    bin.any? do |pair|
      if pair.key.eql?(key)
        return pair.value = value
      end
    end

    bin << Pair.new(key, value)
    value
  end
end
