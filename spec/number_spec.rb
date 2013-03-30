require 'rspec'
require 'number'

describe Number do 
  context 'initialize' do 
    it 'initializes an instance of Number with a hash of number keys and word values' do 
      words = Number.new(2).should be_an_instance_of Number
    end
  end

  context 'translate' do 
    it 'tanslates a single digit into the word of the number' do 
      number = Number.new(3)
      number.translate.should eq 'three'
    end

    it 'translates a double digit up to twenty into the word of the number' do
      number = Number.new(15)
      number.translate.should eq 'fifteen'
    end

    it 'translates multiples of ten into a word' do 
      number = Number.new(70)
      number.translate.should eq 'seventy'
    end

    it 'translates a double digit number into its word equivalent' do 
      number = Number.new(45)
      number.translate.should eq 'forty-five'
    end

    it 'translates a triple digit number into its word equivalent' do 
      number = Number.new(124)
      number.translate.should eq 'one-hundred and twenty-four'
    end

    it 'translates a triple digit number less than 120 into its word equivalent' do 
      number = Number.new(113)
      number.translate.should eq 'one-hundred and thirteen'
    end

    it 'translates a triple digit number less than 120 into its word equivalent' do 
      number = Number.new(107)
      number.translate.should eq 'one-hundred and seven'
    end
  end
end