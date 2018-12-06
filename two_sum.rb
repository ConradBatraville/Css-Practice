# bad_two_sum is O(n^2)

def bad_two_sum?(arr, target)
  arr.each_with_index do |el1, i1|
    arr.each_with_index do |el2, i2|
      return true if el1 + el2 == target && i2 > i1
    end
  end
  false
end

def okay_two_sum(arr, target)
  return arr if arr.length <= 1
  sorted = arr.sort 

  split = arr.length / 2
  middle = arr[split]
 
  left = arr.take(split)''
  right = arr.drop(split)

  case middle <=> target 
  when 1 
    okay_two_sum(right, target)

  when 0
    return middle 
  when -1 
    okay_two_sum(left, target)
  end

  
end