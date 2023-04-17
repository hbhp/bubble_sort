# For each element in list, look at element and element directly on the right
# If out of order, swap the elements
# The number of passes through should equal the length of the array minus one (n-1)
# 
# To optimize...
# With each pass through, check through one less element in the array, starting from the last element
# (k = 1 n - 0, k = 2, n - 1)
#
# Count how many swaps made in each iteration
# If no swaps made, end method

def bubble_sort(original_array)
  temp_array = []
  count = 0
  first_value_position = 0
  second_value_position = 0
  original_array.each_cons(2) do |first, second|            #Loop which completes one pass through
      if first > second                                     # && count <= original_array.length
        first_value_position = original_array.find_index(first)
        second_value_position = original_array.find_index(second)
        temp_array << first
        original_array.delete_at(first_value_position)
        original_array = original_array.insert(second, original_array.delete_at(second_value_position))
        p original_array
                                                            # count += 1
      end
  end
end

bubble_sort([4,3])
