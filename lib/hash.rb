
require 'list'

class HashTable < List
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
      ret_num += num * 9676**power
      power -= 1
    end
    ret_num
  end

  def set(key)
    fail NoMethodError, 'Hash key must be a string' unless key.is_a? String
    index = hash(key) % size
    @bucket[index]=Link.new
    if @bucket[index].nil?
      @bucket[index].insert(key, key.reverse)
    else
      @bucket[index].insert(key, key.reverse)
    end
    @bucket[index].search(key).reverse_word
  end

end
