# For reference:
# gems/activesupport-4.1.0/lib/active_support/dependencies.rb
module Loadable
  def self.exclude_from(base)
    base.class_eval { define_method(:load, Kernel.instance_method(:load)) }
  end
  # ...
end
