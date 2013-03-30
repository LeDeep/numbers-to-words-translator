class Number

SINGLE_DIGITS = {1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'}
TEENS = {11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
TENS = {10 => 'ten', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}

  
  def initialize(number)
    @number = number
  end

  def translate
    if @number < 10
      single_digit(@number)
    elsif @number < 20
      teens(@number)
    elsif @number%10 == 0
      tens(@number)
    elsif @number < 100
      under_one_hundred(@number)
    elsif @number < 1000
      thousand(@number)
    end

  end

  private

  def single_digit(number)
    SINGLE_DIGITS[number]
  end

  def teens(number)
    TEENS[number]
  end

  def tens(number)
    TENS[number]
  end

  def under_one_hundred(number)
    tens(@number - (@number%10)) + "-" + single_digit(@number%10)
  end

  def thousand(number)
    if @number < 110
      single_digit(@number/100) + "-hundred and " + single_digit(@number-100)
    elsif @number < 120
      single_digit(@number/100) + "-hundred and " + teens(@number-100)
    elsif @number < 1000
      single_digit(@number/100) + "-hundred and " + tens(@number%100 - @number%10) + "-" + single_digit(@number%10)
    end
  end
end

