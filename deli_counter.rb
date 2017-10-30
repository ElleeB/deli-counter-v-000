def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    names_with_position = []
    katz_deli.each_with_index do |name, index|
      line_position = index + 1
      names_with_position << "#{line_position}." << "#{name}"
    end
    final_string = names_with_position.join(" ")
    puts "The line is currently: #{final_string}"
  end
end

def take_a_number(katz_deli, new_name)
  katz_deli << new_name
  line_position = katz_deli.size
  puts "Welcome, #{new_name}. You are number #{line_position} in line."
  "#{new_name} #{line_position}"
end

def now_serving(katz_deli)
  if katz_deli.size > 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
