class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.to_i.to_s == numbers

    delimiter = /,|\n/
    if numbers.start_with?('//')
      delimiter = Regexp.escape(numbers[2])
      numbers = numbers[4..]
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end
end