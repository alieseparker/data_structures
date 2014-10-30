Node = Struct.new(:value, :next, :reverse_word)

class List
  def initialize(value, _next, reverse_word)
    @value = value
    @reverse_word = reverse_word
  end

  def insert(value, reverse_word = false)
    if size > 0
      new_word = Node.new(value, nil, reverse_word)
      @tail.next = new_word
      @tail = new_word
    else
      @tail = Node.new(value, nil, reverse_word)
      @head = @tail
    end
  end

  def search(find_val)
    current_index = head
    while current_index
      return current_index if current_index.value == find_val
      current_index = current_index.next
    end
  end
end