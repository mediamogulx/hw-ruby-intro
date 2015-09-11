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
# YOUR CODE HERE
end
