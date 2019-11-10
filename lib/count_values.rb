require "count_values/version"

class Array
  def count_values
    self.inject(Hash.new(0)) do |result, value|
      result[value] += 1; result
    end
  end
end
