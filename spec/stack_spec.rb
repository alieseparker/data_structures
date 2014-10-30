require 'spec_helper'
require 'linked_list'
require 'stack'

describe 'Stack' do
  before do
    @stack = Stack.new
    @stack.push 'Ace'
    @stack.push 'Two'
    @stack.push 'Three'
    @stack.push 'Four'
  end

  it 'should push a new element to the end of the stack' do
    @stack.push 'Five'
    @stack.to_s.must_equal "Five, Four, Three, Two, Ace"
  end

  it 'should pop an element off the end of the stack' do
    @stack.pop.must_equal 'Four'
  end
end

describe 'Empty stack' do
  it 'should raise an exception when the stack is empty' do
    @stack = Stack.new()
    (@stack.pop).must_raise NoMethodError
  end
end