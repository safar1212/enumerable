# Enumerable module that includes all?, any?, and filter methods
module MyEnumerable
  def all?
    each do |el|
      return false unless yield(el)
    end
    true
  end

  def any?
    each do |el|
      return true if yield(el)
    end
    false
  end

  def filter
    array = []
    each do |el|
      array << el if yield(el)
    end
    array
  end
end
