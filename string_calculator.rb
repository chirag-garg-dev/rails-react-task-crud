class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.to_i.to_s == numbers

    delimiter = /,|\n/
    if numbers.start_with?('//')
      delimiter = Regexp.escape(numbers[2])
      numbers = numbers[4..]
    end

    number_array = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = number_array.select { |num| num < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    number_array.sum
  end
end