# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # sum = 0
  # arr.each { |elem| sum += elem }
  # return sum
  return arr.reduce(0, :+)
  # return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  case arr.length
  when 0
    return 0
  when 1
    return arr[0]
  else
    arr.sort!
    return arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_with_index do
    |element1, index1| arr.each_with_index do 
      |element2, index2| return true if index1 != index2 && element1 + element2 == n
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  
  case s[0]
  when "a"..."z"
    !s.start_with?("a", "e", "i", "o", "u")
  when "A"..."Z"
    !s.downcase.start_with?("a", "e", "i", "o", "u")
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end

  if s =~ /^0+$/ # re
    return true
  end
  
  n = s.to_i(2) # returns zero if there is no leading valid number
  return n % 4 == 0 && n / 4 >= 1
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return "$%.2f" % [@price]
  end
end
