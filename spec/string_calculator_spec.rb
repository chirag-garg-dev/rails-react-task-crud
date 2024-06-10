require './string_calculator'

RSpec.describe StringCalculator do
	let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(calculator.add("1,5")).to eq(6)
    end

    it 'returns the sum of two numbers in string' do
      expect(calculator.add("a,5")).to eq(5)
    end

    it 'returns the sum of numbers with new lines' do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'returns the sum of numbers with new lines and ,' do
      expect(calculator.add("3\n2,3\n,2")).to eq(10)
    end

    it 'supports different delimiters' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end
  end
end
