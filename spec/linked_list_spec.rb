require 'spec_helper'
require 'linked_list'
require 'pry'

describe 'Linked Lists' do
  before do
    @list = LinkedList.new
    @list.insert(Node.new('Ace'))
    @list.insert(Node.new('Two'))
    @list.insert(Node.new('Three'))
    @list.insert(Node.new('Four'))
    @list.insert(Node.new('Five'))
  end

  it 'should insert the given node at the head of the list' do
    current_size = @list.size
    @list.insert(Node.new('Six'))
    @list.size.must_equal current_size + 1
  end

  it 'should return the size of the list' do
    (@list.size).must_equal 5
  end

  it 'should search the list for a value and return a node' do
    new_node = @list.insert(Node.new('Six'))
    @list.search('Six').must_equal new_node
  end

  it 'should remove the given node from the list' do
    @list.remove 'Three'
    @list.search('Three').must_equal nil
  end

  it 'should print a comma-separated string of all values' do
    @list.to_s.must_equal 'Five, Four, Three, Two, Ace'
  end

end
