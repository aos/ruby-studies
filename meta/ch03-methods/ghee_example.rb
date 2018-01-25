require 'ghee'
require 'awesome_print'
# For reference: gems/ghee-0.9.8/lib/ghee/resource_proxy.rb

gh = Ghee.basic_auth('aos', 'MYPWD')
all_gists = gh.users('nusco').gists
a_gist = all_gists[20]

a_gist.url 
a_gist.description
all_gists.count
ap a_gist
