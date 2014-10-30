class HashTable
  attr_accessor :buckets, :size
  def initialize(size)
    @size = size
    self.buckets = Array.new(size)
  end

  def hash(word)
    ordinals = word.split('').map()
  end

  def set(key)
    fail TypeError, 'Must be a string' unless word.is_a? String
  end


end