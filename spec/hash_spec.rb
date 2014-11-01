require 'spec_helper'
require 'hash'

describe 'Hash table' do
  before do
    @hash_table = HashTable.new 16
  end

  it 'should hash itself and return a value' do
    @hash_table.hash('Adventure').must_equal 361929719160197272
  end

  it 'should set a value and reverse itself' do
    @hash_table.set('Finn').must_equal "nniF"
    @hash_table.get('nniF').must_equal "Finn"
  end

  it 'should fail if argument is not a string' do
    proc { @hash.set(4) }.must_raise NoMethodError
  end
end

describe 'Hash hamlet' do
  it 'should retrieve all of the reversed words in the hash table' do
    file = File.new('hamlet')
    @hamlet = file.readlines.map(&:strip)
    @hash_table = HashTable.new(@hamlet.count)
    @hamlet.each do |word|
      @hash_table.set(word)
    end

    @hamlet.each do |word|
      @hash_table.get(word).must_equal word.reverse
    end
  end
end