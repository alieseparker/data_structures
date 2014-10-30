require 'linked_list'

class Queue < LinkedList
  def self.enqueue(value)
    insert(Node.new(value))
  end

  def dequeue
    if @head.nil?
      fail NoMethodError, 'Queue may not be dequeued if empty'
    else
      message = first_in
      remove(message)
      message
    end
  end

  def first_in
    current_node = head
    while current_node
      return current_node if current_node.next.nil?
      current_node = current_node.next
    end
  end
end
