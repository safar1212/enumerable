require_relative 'my_enumerable'
# My list class that creates a list
class MyList
  def initialize(*args)
    @list = args
  end
 
  include MyEnumerable
 
  def each
    @list.each { |el| yield(el) if block_given? }
  end
end
 
# Create our list
mylist = MyList.new(1, 2, 3, 4)
 
# Test #all?
mylist.all? { |e| e < 5 }
mylist.all? { |e| e > 5 }
 
# Test #any?
mylist.any? { |e| e == 2 }
mylist.any? { |e| e == 5 }
 
# Test #filter?
mylist.filter(&:even?)
