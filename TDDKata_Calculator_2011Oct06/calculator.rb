class Calculator

  def sum(numbers_to_add)
    numbers_array = numbers_to_add.split ","
    numbers_array.inject(0) { |sum, i| sum += i.to_i }
  end

  def handle_newline_delimiters(numbers_to_add)
    numbers_to_add.sub!("\n", ",")
  end

  def reject_multiple_delimiters(numbers_to_add)
    raise(ArgumentError, "Multiple delimiters are not allowed") if numbers_to_add.include?(",,")
  end

  def handle_custom_delimiter(numbers_to_add)
    if numbers_to_add.match /^\/\//
      custom_delimiter = numbers_to_add[2..2]
      numbers_to_add = numbers_to_add[4..99]
      numbers_to_add.sub!(custom_delimiter, ",")
    end
    numbers_to_add
  end

  def add(numbers_to_add)
    numbers_to_add = handle_custom_delimiter(numbers_to_add)
    handle_newline_delimiters(numbers_to_add)
    reject_multiple_delimiters(numbers_to_add)
    return sum(numbers_to_add) if (numbers_to_add.include?(","))
    return numbers_to_add.to_i if numbers_to_add.length > 0
    0
  end
end