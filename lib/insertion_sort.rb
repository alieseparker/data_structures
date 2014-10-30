# lib/insertion_sort
class Sort
  def self.insertion_sort(unsorted)
    if unsorted.length == 0
      return nil
    end

    (1..unsorted.length - 1).each do |comparer|
      while comparer > 0 && (unsorted[comparer - 1] > unsorted[comparer])
        unsorted[comparer - 1], unsorted[comparer] = unsorted[comparer], unsorted[comparer - 1]
        comparer -= 1
      end
    end
    unsorted
  end
end
