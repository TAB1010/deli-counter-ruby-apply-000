katz_deli = []

take_a_number(katz_deli, "Anila") #=> Welcome, Anila. You are number 1 in line.
take_a_number(katz_deli, "Sharz") #=> Welcome, Sharz. You are number 2 in line.
take_a_number(katz_deli, "Sheni") #=> Welcome, Sheni. You are number 3 in line.

def take_a_number(array, name)
  array.push (name)
  position = array.index (name)
  puts "Hello, #{name}. You are number #{array.index(name)+1} in line."
  return name, position
end

line (katz_deli) #=> "The line is currently: 1. Anila 2. Sharz 3. Sheni"


def line (array)
  if array.length == 0
  puts "there is nobody in line."
else
  message = "The line is currently: 1. Anila 2. Sharz 3. Sheni:"

array.each_with_index do
  |value, index|
  message += "#{index.to_i+1} #{value}"
 end
 puts "#{message}"
 end
end

def now_serving (array)
  if array.empty == true
    puts "You can go next!"
  elsif array.empty == flase
    puts "Now serving #{array.shift}."
  end
end
if array.empty? == true
   puts "There is nobody waiting to be served!"
 elsif array.empty? == false
   puts "Currently serving #{array.shift}."
 end
end
