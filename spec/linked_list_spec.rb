require 'spec_helper'
require 'linked_list'

describe 'Linked Lists' do
  before do
    @list = LinkedList.new
    @list.insert :Ace
    @list.insert :Two
    @list.insert :Three
    @list.insert :Four
    @list.insert :Five
  end

  it 'should insert the given node at the head of the list' do
    @list.insert :Six
    @list[0].must_equal :Six
  end

  it 'should return the size of the list' do
    (@list.size).must_equal 5
  end

  it 'should search the list for a value and return a node' do
    @list.search(:Three).must_equal :Three
  end

  it 'should remove the given node from the list' do
    @list.remove :Three
    @list.search(:Three).must_equal nil
  end

  it 'should print a comma-separated string of all values' do
    @list.to_s.must_equal ":Ace, :Two, :Three, :Four, :Five"
  end

end