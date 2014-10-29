
Node = Struct.new(:value, :next)

class LinkedList
  attr_accessor :head

  def insert(value)
    value.next = head
    @head = value
  end

  def size
    count = 0
    current_node = head
    while current_node
      count +=1
      current_node = current_node.next
    end
    count
  end
end
