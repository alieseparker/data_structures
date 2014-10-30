
Node = Struct.new(:value, :next)

class LinkedList
  attr_accessor :head

  def insert(new_node)
    new_node.next = head
    @head = new_node
  end

  def size
    count = 0
    current_node = head
    while current_node
      count += 1
      current_node = current_node.next
    end
    count
  end

  def search(find_val)
    current_node = head
    while current_node
      return current_node if current_node.value == find_val
      current_node = current_node.next
    end
  end

  def remove(rm_val)
    current_node = @head
    if current_node.value == rm_val
      @head = @head.next
    else
      while (!current_node.nil?) && (!current_node.next.nil?) && ((current_node.next).value != rm_val)
        current_node = current_node.next
      end
      if !current_node.nil? && !current_node.next.nil?
        current_node.next = (current_node.next).next
      end
    end
  end

  def to_s
    empty_string_array = []
    current_node = head
    while current_node
      empty_string_array << current_node.value.to_s
      current_node = current_node.next
    end
    empty_string_array.join(', ')
  end
end
