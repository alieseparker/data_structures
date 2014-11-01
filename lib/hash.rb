require 'linked_list'
class HashTable < LinkedList
  attr_accessor :bucket, :size

  def initialize(size)
    @size = size
    self.bucket = Array.new(size)
  end

  def hash(word)
    power = word.length
    ordinals = word.split('').to_a.map(&:ord)
    ret_num = 0

    ordinals.each do |num|
      ret_num += num * 56**power
      power -= 1
    end
    ret_num
  end

  def set(key)
    fail NoMethodError, 'Hash key must be a string' unless key.is_a? String
    index = hash(key) % size
    if @bucket[index].nil?
      @bucket[index] = LinkedList.new
      @bucket[index].insert(Node.new(key.reverse))
    else
      @bucket[index].insert(Node.new(key.reverse))
    end
    @bucket[index].search(key.reverse).value
  end

  def get(word)
    fail NoMethodError, 'Hash key must be a string' unless word.is_a? String
    index = hash(word) % size

    if @bucket[index].nil?
      fail NoMethodError, 'Nothing is here'
    else
      @bucket[index].search(word.reverse).value.reverse
    end
  end
end
