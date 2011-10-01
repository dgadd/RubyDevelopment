class Calculator

  def handle_newline_delimiters(numbers_to_add)
    numbers_to_add.sub!("\n", ",")
  end

  def reject_multiple_delimiters(numbers_to_add)
    raise(ArgumentError, "You cannot use multiple delimiters.") if numbers_to_add.include?(",,")
  end

  def add(numbers_to_add)
    handle_newline_delimiters(numbers_to_add)
    reject_multiple_delimiters(numbers_to_add)
    return sum(numbers_to_add.split(',')) if numbers_to_add.include?(",")
    return numbers_to_add.to_i if numbers_to_add.length > 0
    0
  end

  def sum(numbers_array)
    return numbers_array.inject(0) { |sum, i| sum += i.to_i }
  end
end