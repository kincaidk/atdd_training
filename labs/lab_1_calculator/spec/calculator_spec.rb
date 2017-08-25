require 'rspec'
require 'calculator'

describe Calculator do
	describe 'addition' do
    #ADD
    it 'does not care about the order numbers are added' do
			calc = Calculator.new
			expect(calc.add(5, 9)).to eq 14
			expect(calc.add(9, 5)).to eq 14
		end
		it 'does not change when you add 0' do
			calc = Calculator.new
			expect(calc.add(12, 0)).to eq 12
    end
    it 'should accept more than 2 numbers at a time' do
      calc = Calculator.new
      expect(calc.add(12, 5, 9, 0, 1)).to eq 27
    end
  end

  describe 'multiplication' do
		it 'does not care about the order numbers are multiplied' do
			calc = Calculator.new
			expect(calc.multiply(5, 9)).to eq 45
			expect(calc.multiply(9, 5)).to eq 45
		end
		it 'becomes 0 when you multiply by 0' do
			calc = Calculator.new
			expect(calc.multiply(12, 0)).to eq 0
    end
    it 'stays the same when you multiply by 1' do
      calc = Calculator.new
      expect(calc.multiply(12,1)).to eq 12
    end
		it 'negative number multiplied by a positive number will yield a negative number' do
			calc = Calculator.new
			expect(calc.multiply(12,-2)).to eq -24
    end
		it 'negative number multiplied by a negative number will yield a positive number' do
			calc = Calculator.new
			expect(calc.multiply(-12,-2)).to eq 24
    end
		it 'should accept more than 2 numbers at a time' do
			calc = Calculator.new
			expect(calc.multiply(12, 5, 9, 1)).to eq 540
    end
  end

  describe 'subtraction' do
		it 'DOES care about the order numbers are subtracted' do
			calc = Calculator.new
			expect(calc.subtract(5, 9)).to eq -4
			expect(calc.subtract(9, 5)).to eq 4
		end
		it 'does not change when you subtract 0' do
			calc = Calculator.new
			expect(calc.subtract(12, 0)).to eq 12
    end
		it 'should accept more than 2 numbers at a time' do
			calc = Calculator.new
			expect(calc.subtract(12, 5, 9, 1)).to eq -3
    end
  end

  describe 'division' do
		it 'DOES care about the order numbers are divided' do
			calc = Calculator.new
			expect(calc.divide(4, 8)).to eq 0 #ruby rounds it down from 0.5 to 0
			expect(calc.divide(8, 4)).to eq 2
		end
		it 'throws an error when you divide by 0' do############################ HOW DO??
			calc = Calculator.new
			expect {calc.divide(12, 0)}.to raise_error(ZeroDivisionError)
		end
		it 'stays the same when you divide by 1' do
			calc = Calculator.new
			expect(calc.divide(12,1)).to eq 12
		end
		it 'negative number divided by a positive number will yield a negative number' do
			calc = Calculator.new
			expect(calc.divide(12,-2)).to eq -6
		end
		it 'negative number divided by a negative number will yield a positive number' do
			calc = Calculator.new
			expect(calc.divide(-12,-2)).to eq 6
    end
		it 'should accept more than 2 numbers at a time' do
			calc = Calculator.new
			expect(calc.divide(45, 5, 9, 1)).to eq 1
    end
		it 'should accept more than 2 numbers at a time' do
			calc = Calculator.new
			expect(calc.divide(100, 2, 5, 2)).to eq 5
		end
	end
end