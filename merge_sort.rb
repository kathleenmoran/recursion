

def merge_sort(array)
  if array.length <= 1
    array
  else
    merge(merge_sort(array[0...array.length / 2]), merge_sort(array[array.length / 2...array.length]))
  end
end

def merge(array1, array2)
  merged_array = []
  pointer1 = 0
  pointer2 = 0
  while pointer1 < array1.length && pointer2 < array2.length
    if array1[pointer1] < array2[pointer2]
      merged_array << array1[pointer1]
      pointer1 += 1
    else
      merged_array << array2[pointer2]
      pointer2 += 1
    end
  end
  merged_array + array1.drop(pointer1) + array2.drop(pointer2)
end
