def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def take_a_number(line)
  if line.length == 0
    line << 1
  else
    line << line[-1] + 1
  end
  puts line.inspect
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
  puts katz_deli.inspect
end

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"

    katz_deli.each_with_index do |value, index|
      message += " #{index.to_i + 1}. #{value}"
    end

    puts "#{message}"
  end


end
line = []
take_a_number(line) #=> 1
take_a_number(line) #=> 2

now_serving(line) #=> 1

take_a_number(line) #=> 3

now_serving(line) #=> 2
now_serving(line) #=> 3

take_a_number(line) #=> 1
