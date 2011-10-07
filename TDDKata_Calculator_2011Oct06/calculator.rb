class Calculator

  def sum(numbers_to_add)
    numbers_array = numbers_to_add.split ","
    numbers_array.inject(0) { |sum, i| sum += i.to_i }
  end

  def add(numbers_to_add)
    return sum(numbers_to_add) if (numbers_to_add.include?(","))
    return numbers_to_add.to_i if numbers_to_add.length > 0
    0
  end
end