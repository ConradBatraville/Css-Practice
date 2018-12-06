require "byebug"

# Phase 1

def my_min(list)
  smallest_number = list.first
  
  list.each_with_index do |n1, i1|
    list.each_with_index do |n2, i2|
      if n1 < n2 && i1 < i2
       smallest_number = n1 if n1 < smallest_number  
      end
    end
  end

  smallest_number
end


# Phase 2
# This algorithm is O(n), linear.

def my_min_linear(list)
  smallest_number = list.first
  
  list.each do |num|
    smallest_number = num if num < smallest_number
  end

  smallest_number
end

# Largest Contiguous Sub-sum

# Phase 1 
# This algorithm is O(n^2)

def largest_contiguous_subsum(list)
  all_subarrays = Array.new 
  i = 0 
  j = 0

  while j < list.length 
    while i < list.length 
      all_subarrays << list[j..i]
      i += 1 
    end 
    j += 1 
    i = j 
  end

  sums = Array.new

  all_subarrays.each do |arr|
    sum = 0

    arr.each { |n| sum += n }

    sums << sum
  end

  sums.max
end


# Phase 2 

def better_subsum(list)
  largest_sum = list.first
  current_sum = 0

  list.each do |n|
    current_sum = 0 if current_sum < 0
    current_sum += n 
    largest_sum = current_sum if current_sum > largest_sum
  end
  largest_sum
end
