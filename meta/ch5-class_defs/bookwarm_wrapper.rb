module AmazonWrapper
  def reviews_of(book)
    start = Time.now
    result = super
    time_taken = Time.now
    puts "reviews_of() took more than #{time_taken} seconds" if 
      time_taken > 2
    result
  rescue
    puts "reviews_of() failed"
    []
  end
end

Amazon.class_eval do
  # 'prepend's 'AmazonWrapper' below 'Amazon' in inheritance tree
  # such that calling 'super' delegates to 'Amazon'
  prepend AmazonWrapper
end
