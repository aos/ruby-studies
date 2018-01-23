# ERB is a code processor
require 'erb'
erb = ERB.new(File.read('template.rhtml'))
erb.run

# From ERB source code:
class ERB
  # 'new_toplevel' returns a copy of 'TOPLEVEL_BINDING'
  def result(b = new_toplevel) 
    # If a safe level is set, ERB builds a quick sandbox:
    # It makes sure that the global safe level is exactly what the user asked
    # for and also uses a 'Proc' as a clean room to execute the code in a 
    # separate scope
    if @safe_level
      proc {
        # The new value of '$SAFE' applies only inside the 'Proc'
        # Ruby interpreter resets '$SAFE' to its former value after 'call'
        $SAFE = @safe_level
        eval(@src, b, (@filename || '(erb)'), 0)
      }.call
    else
      eval(@src, b, (@filename || '(erb)'), 0)
    end
  end
  #...
end
