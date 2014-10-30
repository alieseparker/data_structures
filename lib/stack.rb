require 'linked_list'
class Stack < LinkedList
  def push(value)
    insert(Node.new(value))
  end

  def pop
    if @head.nil?
      fail NoMethodError, 'Stack cannot be empty'
    else
      message = @head.value
      remove(@head.value)
      message
    end
  end
end
