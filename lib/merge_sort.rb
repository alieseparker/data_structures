class Sort
  def self.merge_sort(unsorted)
    if unsorted.length == 0
      return nil
    elsif unsorted.length <= 1
      unsorted
    else
      mid = (unsorted.length / 2).floor
      left = merge_sort(unsorted[0..mid - 1])
      right = merge_sort(unsorted[mid..unsorted.length])
      merge(left, right)
    end
  end

  def self.merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end
end
