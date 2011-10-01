class Calculator
  # To change this template use File | Settings | File Templates.
  def add(numbers_to_add)
    return sum(numbers_to_add.split(',')) if numbers_to_add.include?(",")
    return numbers_to_add.to_i if numbers_to_add.length > 0
    0
  end

  def sum(numbers_array)
    return numbers_array.inject(0) { |sum, i| sum += i.to_i }
  end
end