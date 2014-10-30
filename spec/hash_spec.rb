require 'spec_helper'
require 'hash_table'

describe 'Hash table' do
  before do
    @hash_table = HashTable.new 16
  end
  it 'should hash itself and return a value' do
    @hash_table.hash(Adventure).must_equal
  end

  it 'should set a value and reverse itself' do
    @hash_table.set('Finn').must_equal "nniF"
    @hash_table.set('nniF').must_equal "Finn"
  end

  it 'should fail if argument is not a string' do
    proc { @hash.set(4) }.must_raise TypeError
  end
end

describe 'Hash hamlet' do
  before do
    file = File.new('hamlet')
    @hamlet = file.readlines.map(&:strip)
    @hash_table = HashTable.new @hamlet.count
    @hamlet.each do |word|
    @hash_table.set(word)
  end

  it 'should retrieve all of the reversed words in the hash table' do
    @hamlet.each do |word|
      @hash_table.get(word).must_equal word.reverse
    end
  end
end