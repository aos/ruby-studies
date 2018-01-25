def explore_array(method)
  code = "['a', 'b', 'c'].#{method}"
  puts "Evaluating: #{code}"
  eval code
end

# Infinite loop which collects strings from STDIN and feeds these strings into
# 'explore_array'
loop { p explore_array(gets()) }

# Without eval, however this will not work with methods that take blocks
# which would require arbitrary strings of code
def explore_array(method, *arguments)
  ['a', 'b', 'c'].send(method, *arguments)
end
