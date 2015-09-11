# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total=0
  arr.each{|y| total+=y}
  return total
end

def max_2_sum arr
  total=0
  arr.sort!.reverse!
  if arr.length == 1
    total = arr[0]
  end
  if arr.length > 1
    total = arr[0] + arr[1]
  end
  return total
end

def sum_to_n? arr, n
  testarr = false
  total=0
  if arr.length > 1
    aPosition = 0
    arr.each do |a|
      bPosition = 0
      arr.each do |b|
        if aPosition != bPosition
          if a + b == n
            testarr = true
          end
        end
        bPosition += 1
      end
      aPosition += 1
    end
    if total == n
      testarr = true
    end
  end
  return testarr
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  testString = false
  s.downcase!
  if /[bcdfghjklmnpqrstvwxz]/ =~ s[0]
    testString = true
  end
  return testString
end

def binary_multiple_of_4? s
    testString = false
    if s.to_i%10 == 0
        invalidChar = false
        for i in 0..s.length-1
            if s[i] =~ /[01]/
                testString = true
            else
                invalidChar = true
            end
        end
        if invalidChar == true
            testString = false
        end
    end
    return testString
end

# Part 3

class BookInStock
  attr_accessor:isbn
  attr_accessor:price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if @isbn == ""
      raise ArgumentError, "ISBN must be identified. #{@isbn} given."
    end
    if @price < 0 
      raise ArgumentError, "Price cannot be negative. #{@price} given."
    end
    if @price == 0 
      raise ArgumentError, "Price cannot be zero. #{@price} given."
    end
  end
  
  def price_as_string
    sPrice = @price.to_s
    parts = sPrice.split(".")
    pr = sPrice #initiate to set the scope
    ct = 0      #initiate to set the scope
    parts.each do |a|
      ct += 1
      if ct == 1
        pr = "$#{a}"      #set the dollars portion of the string
      end
      if ct == 2
        pr += ".#{a}"     #set the cents portion of the string
        if a.length < 2
          pr += "0"       #append 0 to the cents value if no trailing 0
        end
      end
    end
    if ct == 1
      pr += ".00"         #append .00 if value is whole-dollar
    end
    return pr
  end
end
