# Write a method that will take a short line of text, and print it within a box.

def print_in_box(message)
  puts "+-#{'-' * message.size}-+"
  puts "| #{' ' * message.size} |"
  puts "| #{message} |"
  puts "| #{' ' * message.size} |"
  puts "+-#{'-' * message.size}-+"
end

print_in_box('To boldly go where no one has gone before.')

# OUTPUT
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')

# OUTPUT
# +--+
# |  |
# |  |
# |  |
# +--+

