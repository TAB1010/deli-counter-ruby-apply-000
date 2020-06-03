katz_deli = []

take_a_number(katz_deli, "Anila") #=> Welcome, Anila. You are number 1 in line.
take_a_number(katz_deli, "Sharz") #=> Welcome, Sharz. You are number 2 in line.
take_a_number(katz_deli, "Sheni") #=> Welcome, Sheni. You are number 3 in line.

katz_deli = []

def take_a_number(array, name)
  array.push(name)
  position = array.index(name)
  puts "Welcome, #{name}. You are number #{array.index(name)+1} in line."
  return name, position
end

take_a_number(katz_deli, "Anila")
take_a_number(katz_deli, "Sharz")
take_a_number(katz_deli, "Sheni")

def line(array) 
  if array.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"

  array.each_with_index do |value, index|
    message += " #{index.to_i+1}. #{value}"
  end
  puts "#{message}"
  end
end

line(katz_deli)


def now_serving(array)
  if array.empty? == true
    puts "There is nobody waiting to be served!"
  elsif array.empty? == false
    puts "Currently serving #{array.shift}."
  end
end

now_serving(katz_deli)
