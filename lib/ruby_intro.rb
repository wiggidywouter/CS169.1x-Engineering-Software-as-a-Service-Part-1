# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(:+) || 0
end

def max_2_sum arr
  sum(arr.sort.pop(2)) || 0
end

def sum_to_n? arr, n
  if arr.empty?
    return 0 == n
  end
  arr.combination(2).to_a.each do |pair|
    return true if sum(pair) == n
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  /^[bcdfghjklmnpqrstvwxyz]/i === s
end

def binary_multiple_of_4? s
  /^[01]+$/ === s && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError, "first argument needs to be an isbn" if isbn == ''
    raise ArgumentError, "second argument needs to be a price greater than 0" if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf('$%.2f', @price)
  end
end
