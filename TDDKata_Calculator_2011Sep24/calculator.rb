class Calculator
  def sum(numbersArray)
    total = 0
    numbersArray.each { |i| total += i.to_i }
    return total
  end

  def add(numbersToAdd)
    return sum(numbersToAdd.split(',')) if numbersToAdd.include?(',')
    return numbersToAdd.to_i if numbersToAdd
    0
  end
end