def substrings(string)
  chars_array = string.chars
  chars_size = chars_array.size
  holder = []
  chars_array.each_with_index do |char, index|
    i = index + 1
    while i < chars_size
      holder << chars_array[index..i]
      i += 1
    end
  end
  holder.map do |string|
    string.join
  end
end

def palindromes(str)
  array_of_strings = substrings(str)
  array_of_strings.select do |string|
    string == string.reverse
  end
end



# Write a method that returns a list of all substrings of a string that are
# palindromic.


puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


# Method

# input = string, output = array of strings.

# Algorithm

# 1. Get all 'greater than 1 char' substrings from a string. (write a method substrings for this)
  # Iterate through the string, and at each iteration, implement a loop.
  # The loop
# 2. Find out which ones are palindromes.
# 3. Return the ones that are palindromes.
