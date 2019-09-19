# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  for num in arr do 
    sum += num
  end
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length <= 1
    return (arr.length==1) ? arr[0]:0
  end
  @arr = arr.sort.reverse
  @arr[0]+@arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_with_index do |vi, i|
    arr.each_with_index do |vj, j|
      if i == j
        next
      end 
      if vi+vj == n
        return true
      end
    end
  end
  false
end
# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s !~ /^[[:alpha:]]/i 
    return false
  end
  not s =~ /^[aeiou]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s !~ /^[01]+/i 
    return false
  end
  s == "0" or s =~ /00$/
end

# Part 3
class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.length==0 or price <=0
      raise ArgumentError
    end
    @isbn =  isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(isbn_n)
    @isbn = isbn_n
  end
  def price
    @price
  end
  def price=(price_n)
    @price = price_n
  end
  def price_as_string
    "$%.2f" % @price
  end
end
