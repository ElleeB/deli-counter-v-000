def line(katz_deli)
  if katz_deli.size <= 0
    puts "The line is currently empty."
  else
    names_with_position = [] # empty array
    katz_deli.each_with_index do |name, index| # -- go over each and pull name and index
      line_position = index + 1 # -- new variable to account for +1 to index
      names_with_position << "#{line_position}" << "#{name}" # -- shovel in names and new line position to empty index
    end
    new_string = names_with_position.join(". ") # -- create new string from the array above in order to insert the period with space
    new_array = new_string.split # -- set variable for new array from the string that includes periods and spaces
    new_array[1] = names_with_position[1] # -- replace "Name." with the name only stored in n_w_p array
    new_array[3] = names_with_position[3] # -- samem as previous line
    new_array.join(" ") # -- converts array to string, adds spaces, and returns the new string!
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
