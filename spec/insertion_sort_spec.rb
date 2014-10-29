require 'spec_helper'
require 'insertion_sort'

describe 'Insertion Sort' do

  let(:unsorted) { [*1..1000] }
  let(:sorted) { [*1..1000] }

  it 'should sort an array' do
    unsorted.shuffle.insertion_sort.must_equal sorted
  end

  it 'should sort an array of repeated elements' do
    [5, 3, 2, 5, 3, 2, 5, 3, 2].insertion_sort.must_equal [2, 2, 2, 3, 3, 3, 5, 5, 5]
  end

  it 'should return nil if called on an empty array' do
    empty = []
    empty.insertion_sort.must_equal nil
  end

  it 'should sort worst case, reversed sorted array' do
    unsorted.reverse.insertion_sort.must_equal sorted
  end
end