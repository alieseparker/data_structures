class Sort
  def self.quick_sort(unsorted)
    return nil if unsorted.length == 0
    sort(unsorted)
  end

  def self.sort(unsorted)
    return unsorted if unsorted.length <= 1

    pivot_index = (unsorted.length / 2).floor
    pivot_value = unsorted[pivot_index]
    unsorted.delete_at(pivot_index)

    lesser = []
    greater = []

    unsorted.each do |value|
      if value <= pivot_value
        lesser << value
      else
        greater << value
      end
    end
    sort(lesser) + [pivot_value] + sort(greater)
  end
end
