# Kernel#eval
# Takes a string that contains Ruby code -- executes the string

array = [10, 20]
element = 30
p eval("array << element") # => [10, 20, 30]
