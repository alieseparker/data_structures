require 'spec_helper'
require 'linked_list'
require 'queuer'

describe 'Queuer' do
  before do
    @queue = Queue.new
    @queue = Queuer.enqueue('Forrest')
    @queue = Queuer.enqueue('Willow')
    @queue = Queuer.enqueue('Cedar')
    @queue = Queuer.enqueue('Aspen')
    @queue = Queuer.enqueue('Green')
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
    @queue = Queuer.new
    proc { @queue.dequeue }.must_raise NoMethodError
  end
end
