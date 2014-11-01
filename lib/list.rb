List = Struct.new(:value, :next, :reverse_word)

class HashList
  def insert(value, index, reverse_word)
    if size > 0
      new_word = List.new(value, index, reverse_word)
      @tail.next = new_word
      @tail = new_word
    else
      @tail = List.new(value, index, reverse_word)
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