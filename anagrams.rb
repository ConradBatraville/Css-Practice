# Phase 1 
# This algorithm is O(n!) Factorial

def first_anagram?(word1, word2)
  word1.chars.permutation.to_a.include?(word2.chars)
end

# Phase 2
# This algorithm is O(n^3) polynomial

def second_anagram?(word1, word2)
  first = word1.chars
  second = word2.chars 

  first.each do |ch1|
    second.each do |ch2|
      if second.include?(ch1)
        second.delete_at(second.index(ch1))
      end
    end 
  end

  second.empty?
end 

# Phase 3
# This algorithm is O(nlogn) linearithmic

def third_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

# Phase 4
# This algorithm is O(1) constant

def fourth_anagram?(word1, word2)
  letter_count = Hash.new(0)

  word1.each_char { |char| letter_count[char] += 1 }
  word2.each_char { |char| letter_count[char] -= 1 }

  letter_count.values.all? { |val| val.zero? }
end

