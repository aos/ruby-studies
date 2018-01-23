# VCR gem records and replays HTTP calls
# For reference:
# gems/vcr-2.5.0/lib/vcr/structs.rb

module VCR
  class Request
    include Normalizers::Body
    #...
  end
end
#...
module VCR
  module Normalizers
    module Body
      def self.included(klass)
        klass.extend ClassMethods
      end

      module ClassMethods
        def body_from(hash_or_string)
          #...
        end
      end
    end
  end
end

# Chain of events:
# 1. Ruby calls included hook on 'Body'
# 2. Hook turns back to 'Request' and extends it with 'ClassMethods' module
# 3. 'extend' method includes the methods from 'ClassMethods' in the 'Request's
#    singleton class
# As a result: 'body_from' and other instance methods get mixed into the 
# singleton class of 'Request' effectively becoming class methods of 'Request'
