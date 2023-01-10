# The program can be passed a number.
# When passed a number that is a multiple of 3, the program returns the message 'Fizz'.
# When passed a number that is a multiple of 5, the program returns the message 'Buzz'.
# When passed a number that is a multiple of both 3 and 5, the program ignores the previous 2 rules and returns the message 'FizzBuzz'.
# In all other cases, the program simply returns the given number.

require 'fizzbuzz'

describe 'fizzbuzz' do
    it 'returns "fizz" when passed 3' do
        expect(fizzbuzz(3)).to eq 'Fizz'
    end    
    
    it 'returns "buzz" when passed 5' do 
      expect(fizzbuzz(5)).to eq 'Buzz'
    end

    it 'returns 4 when passed 4' do 
      expect(fizzbuzz(4)).to eq 4
    end

    it 'returns itself when passed a number not 3 or 5' do
      number = 7 #assume the number is 7
      result = 'unknown'
      if number != 3 || number != 5
        result = number
      end  
      expect(fizzbuzz(number)).to eq result #fizzbuzz(7) => 7
    end 

    it 'returns "Fizz" when passed 6' do
      expect(fizzbuzz(6)).to eq 'Fizz'
    end
  
end 