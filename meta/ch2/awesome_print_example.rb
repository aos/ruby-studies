require 'awesome_print'

local_time = { :city => 'Rome', :now => Time.now }

# ap is defined at the Kernel level
ap local_time, :indent => 2
