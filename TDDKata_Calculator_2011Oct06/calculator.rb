class Calculator

  def add(numbersToAdd)
    return numbersToAdd.to_i if numbersToAdd.length > 0
    0
  end
end