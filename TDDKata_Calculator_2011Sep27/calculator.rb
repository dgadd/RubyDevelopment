class Calculator
  def handle_newline_delimiter(numbers_to_add)
    numbers_to_add.sub!("\n", ",")
  end

  def add(numbers_to_add)
    handle_newline_delimiter(numbers_to_add)
    return sum(numbers_to_add.split(',')) if numbers_to_add.include?(",")
    return numbers_to_add.to_i if numbers_to_add.length > 0
    return 0
  end

  def sum(numbers_array)
    return numbers_array.inject(0) { |total, number_string| total += number_string.to_i }
  end
end