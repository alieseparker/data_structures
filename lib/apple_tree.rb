class AppleTree
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end

  def pre_order(temp = [])
    temp << @value
    left.pre_order(temp) if left
    right.pre_order(temp) if right

    temp.join(', ')
  end

  def in_order(temp = [])
    left.in_order(temp) if left
    temp << @value
    right.in_order(temp) if right

    temp.join(', ')
  end

  def post_order(temp = [])
    left.post_order(temp) if left
    right.post_order(temp) if right
    temp << @value

    temp.join(', ')
  end
end
