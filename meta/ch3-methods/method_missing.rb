class Lawyer
  def method_missing(method, *args, &block)
    puts "You called: #{method}(#{args.join(', ')})"
    puts "Block: #{block.call}" if block_given?
  end
end

bob = Lawyer.new
bob.talk_simple('a', 'b') do
  'Hello'
end
