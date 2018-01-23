# Ruby automatically marks potentially unsafe objects (external sources)
# as tainted -- including strings from web forms, files, command line, etc
# Creating a new string by manipulating tainted ones the result is also tainted

# Use 'tainted?' method to check

# user_input = "User input: #{gets()}"
# puts user_input.tainted?

# Safe levels
# There exists a global variable '$SAFE' which assigns diff. levels of security
# default: 0 ("hippie commune")
# to: 3 ("military dictatorship")
$SAFE = 1
user_second_input = "User input: #{gets()}"
eval user_second_input # => SecurityError: Insecure operation - eval

# 'Kernel#load' and 'Kernel#require' also execute code from strings in a way

# Note: A safe level of 2 or higher prevents you from using 'load' with a
# tainted filename
