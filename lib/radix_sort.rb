class Sort
  def self.radix_sort(unsorted)
    return nil if unsorted.length == 0
    final_iteration = unsorted.max.to_s.length
    current_iteration = 0
    ret_array = unsorted

    while current_iteration < final_iteration
      tmp = [[], [], [], [], [], [], [], [], [], []]
      ret_array.each do |ele|
        ele_str = ele.to_s
        if (ele_str.length - 1 - current_iteration) < 0
          bucket_num = 0
        else
          bucket_num = ele_str[ele_str.length - 1 - current_iteration].to_i
        end
        tmp[bucket_num] << ele
      end
      ret_array = []
      tmp.each do |bucket|
        ret_array.concat(bucket)
      end
      current_iteration += 1
    end
    ret_array
  end
end
