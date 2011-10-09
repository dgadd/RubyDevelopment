class Calculator

  def initialize(default_numbers_to_add = "", fp_value = 0.0)
    @default_numbers_to_add = default_numbers_to_add
    @fp_value = fp_value
  end

  def add(numbers_to_add)
    numbers_to_add = @default_numbers_to_add if @default_numbers_to_add.length > 0
    0
  end

  def default_array()
    @default_numbers_to_add.split(",")
  end

  def add_to_default(new_number)
    @default_numbers_to_add += "," + new_number.to_s
  end

  def fp_value()
    @fp_value
  end
end