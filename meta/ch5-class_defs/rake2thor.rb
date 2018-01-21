# For reference:
# gems/thor-0.17.0/bin/rake2thor

# Converts Rake build files to Thor scripts
$requires = []
module Kernel
  def require_with_record(file)
    $requires << file if caller[1] =~ /rake2thor:/
    require_without_record file
  end
  alias_method :require_without_record, :require
  alias_method :require, :require_with_record
end

load input

# Steps for method wrapping:
# 1. Alias 'Kernel#require' to 'require_without_record'
# 2. Monkeypatches 'require' to store the names of files that are
#    required by the Rakefile
#    (This is done by getting the stack of callers with the 
#     'Kernel#callers' method, if the 2nd caller on the stack is 
#     'rake2thor' itself, that means the Rakefile must be the first
#     caller on the stack -- the one that actually called 'require')
# 3. New 'require' falls back to the original 'require', now called
#    'require_without_record'
