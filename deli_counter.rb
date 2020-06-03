katz_deli = []

def take_a_number(array, name)
  array.push (name)
  position = array.index (name)
  puts "Hello, #{name}. You are number #{array.index(name)+1} in line."
  return name, position
end

take_a_number(katz_deli, "Anila") #=> Welcome, Anila. You are number 1 in line.
take_a_number(katz_deli, "Sharz") #=> Welcome, Sharz. You are number 2 in line.
take_a_number(katz_deli, "Sheni") #=> Welcome, Sheni. You are number 3 in line.


def now_serving(array)
  if array.empty? == true
    puts "There is nobody waiting to be served!"
  elsif array.empty? == false
    puts "Currently serving #{array.shift}."
  end
end

now_serving(katz_deli)
