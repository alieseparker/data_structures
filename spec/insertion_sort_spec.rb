require 'spec_helper'
require 'insertion_sort'

describe 'Insertion Sort' do

  let(:unsorted) { [*1..1000] }
  let(:sorted) { [*1..1000] }

  it 'should sort an array' do
    Sort.insertion_sort(unsorted.shuffle).must_equal sorted
  end

  it 'should sort an array of repeated elements' do
    Sort.insertion_sort([5, 3, 2, 5, 3, 2, 3, 2]
      ).must_equal [2, 2, 2, 3, 3, 3, 5, 5]
  end

  it 'should return nil if called on an empty array' do
    Sort.insertion_sort([]).must_equal nil
  end

  it 'should sort worst case, reversed sorted array' do
    Sort.insertion_sort(unsorted.reverse).must_equal sorted
  end
end
