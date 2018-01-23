# REST Client (simple HTTP client library) (rest-client)
# For reference:
# gems/rest-client-1.6.7/lib/restclient/resource.rb

POSSIBLE_VERBS = ['get', 'put', 'post', 'delete']

# REST-client using eval
# Syntax known as 'heredoc'
POSSIBLE_VERBS.each do |m|
  eval <<-end_eval
def #{m}(path, *args, &b)
	r[path].#{m}(*args, &b)
end
  end_eval
end

# Without eval (using dynamic method and dynamic dispatch)
POSSIBLE_VERBS.each do |m|
  define_method m do |path, *args, &b|
    r[path].send(m, *args, &b)
  end
end
