class Calculator
  # To change this template use File | Settings | File Templates.
  def add(numbers_to_add)
    return numbers_to_add.to_i if numbers_to_add.length > 0
    0
  end
end