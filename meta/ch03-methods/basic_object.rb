# The Blank Slate ==> BasicObject

im = BasicObject.instance_methods

# If you want to create a blank slate, inherit from BasicObject instead
# By default all classes inherit from Object, which has a million methods
# defined on it

class Computer < BasicObject
end
