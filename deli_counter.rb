def line(katz_deli)
  if katz_deli.size <= 0
    puts "The line is currently empty."
  else
    names_with_position = [] 
    katz_deli.each_with_index do |name, index|
      line_position = index + 1
      names_with_position << "#{line_position}." << "#{name}"
    end
    new_string = names_with_position.join(" ")
    puts "The line is currently: #{final_string}"
  end
end

# -- if more than 3 people in line, the periods come back after the names: issue with lines 12 & 13
# -- it 

def take_a_number(katz_deli, new_name)
  katz_deli << new_name
  line_position = katz_deli.size
  puts "Welcome, #{new_name}. You are number #{line_position} in line."
  "#{new_name} #{line_position}"
end
