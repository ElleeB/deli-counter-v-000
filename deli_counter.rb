katz_deli = ["Laura", "Ryan", "Avery"]

def line(katz_deli)
  if katz_deli.size <= 0
    puts "The line is currently empty."
  else
    names_with_position = []
    katz_deli.each_with_index do |name, index|
      line_position = index + 1
      names_with_position << "#{line_position}" << "#{name}"
    end
    new_string = names_with_position.join(". ")
    new_string.split
  end
end

#=>["1", "Laura", "2", "Ryan", "3", "Avery"]
#=> "1. Laura. 2. Ryan. 3. Avery"
#=> ["1.", "Laura.", "2.", "Ryan.", "3.", "Avery"]

#[1] and [3] need to be replaced with natmes_with_position elements
# = ["1", "Laura", "2", "Ryan", "3", "Avery"]


def take_a_number(katz_deli, new_name)
  katz_deli << new_name
  line_position = katz_deli.size
  puts "Welcome, #{new_name}. You are number #{line_position} in line."
  "#{new_name} #{line_position}"
end
