require 'spec_helper'
require 'linked_list'
require 'queue'

describe 'Queue' do
  before do
    @queue = Queue.new
    @queue = Queue.enqueue('Forrest')
    @queue = Queue.enqueue('Willow')
    @queue = Queue.enqueue('Cedar')
    @queue = Queue.enqueue('Aspen')
    @queue = Queue.enqueue('Green')
  end

  it 'adds value to the queue' do
    @queue.enqueue(value).to_s.must_equal "'Forrest', 'Willow',
    'Cedar', 'Aspen', 'Green'"
  end

  it 'should return the size of the queue' do
    @queue.size.must_equal 5
  end

  it 'should remove the correct item from the queue' do
    @queue.dequeue.must_equal 'Forrest'
  end

  it 'should rais an exception if the que is empty' do
    @queue = Queue.new
    proc { @queue.dequeue }.must_raise NoMethodError
  end
end
