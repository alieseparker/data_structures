require 'spec_helper'
require 'apple_tree'

describe 'Apple Tree' do
  before 'should build a binary tree of employees' do
    @team = tim = AppleTree.new('Tim')
    jony = tim.left = AppleTree.new('Jony')
    phil = tim.right = AppleTree.new('Phil')
    craig = phil.left = AppleTree.new('Craig')
    eddie = phil.right = AppleTree.new('Eddie')
    dan = jony.left = AppleTree.new('Dan')
    katie = jony.right = AppleTree.new('Katie')
    peter = katie.left = AppleTree.new('Peter')
    andrea = katie.right = AppleTree.new('Andrea')
  end

  it 'should return pre order of employees' do
    @team.pre_order.must_equal('Tim, Jony, Dan, Katie, Peter, Andrea, Phil, Craig, Eddie')
  end

  it 'should return in order of employees' do
    @team.in_order.must_equal('Dan, Jony, Peter, Katie, Andrea, Tim, Craig, Phil, Eddie')
  end

  it 'should return pre order of employees' do
    @team.post_order.must_equal('Dan, Peter, Andrea, Katie, Jony, Craig, Eddie, Phil, Tim')
  end
end
