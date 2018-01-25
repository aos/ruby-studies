# This file raises an Exception on the second line
x = 1 / 0

# When irb calls 'eval' it calls it with the filename and line number it's 
# currently processing, that's why the exception's stack track is correct
