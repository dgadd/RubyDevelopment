class Calculator
  def sum(numbersArray)
    total = 0
    numbersArray.each { |i| total += i.to_i }
    return total
  end

  def handle_newline_delimiters(numbersToAdd)
    numbersToAdd.sub!("\n", ",")
  end

  def add(numbersToAdd)
    handle_newline_delimiters(numbersToAdd)
    return sum(numbersToAdd.split(',')) if numbersToAdd.include?(',')
    return numbersToAdd.to_i if numbersToAdd
    0
  end
end