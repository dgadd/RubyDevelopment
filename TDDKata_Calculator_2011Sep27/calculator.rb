class Calculator
  def add(numbers_to_add)
    return numbers_to_add.to_i if numbers_to_add.length > 0
    return 0
  end
end