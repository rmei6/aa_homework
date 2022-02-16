def sum_to(number)
    return nil if number < 0
    return 1 if number == 1
    number + sum_to(number-1)
end

def add_numbers(numbers)
    return nil if numbers.empty?
    return numbers.first if numbers.length == 1
    numbers.first + add_numbers(numbers.drop(1))
end

def gamma_fnc(number)
    return nil if number == 0
    return 1 if number == 1
    (number-1) * gamma_fnc(number-1)
end

def ice_cream_shop(flavors,favorite)
    return false if flavors.empty?
    flavors.first == favorite || ice_cream_shop(flavors.drop(1),favorite)
end

def reverse(string)
    return "" if string.empty?
    string[-1].concat(reverse(string[0...-1]))
end

puts "sum_to"
# Test Cases
p sum_to(5)  # => returns 15
p sum_to(1)  # => returns 1
p sum_to(9)  # => returns 45
p sum_to(-8)  # => returns nil

puts "add_numbers"
# Test Cases
p add_numbers([1,2,3,4]) # => returns 10
p add_numbers([3]) # => returns 3
p add_numbers([-80,34,7]) # => returns -39
p add_numbers([]) # => returns nil

puts "gamma_fnc"
# Test Cases
p gamma_fnc(0)  # => returns nil
p gamma_fnc(1)  # => returns 1
p gamma_fnc(4)  # => returns 6
p gamma_fnc(8)  # => returns 5040

puts "ice_cream_shop"
# Test Cases
p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
p ice_cream_shop([], 'honey lavender')  # => returns false

puts "reverse"
 # Test Cases
 p reverse("house") # => "esuoh"
 p reverse("dog") # => "god"
 p reverse("atom") # => "mota"
 p reverse("q") # => "q"
 p reverse("id") # => "di"
 p reverse("") # => ""