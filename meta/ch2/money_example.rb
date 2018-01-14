require 'money'

bargain_price = Money.from_amount(99, 'USD')
p bargain_price.format # => '$99.00'

standard_price = Money.new(100, 'USD')
p standard_price.format # => '$100.00'

