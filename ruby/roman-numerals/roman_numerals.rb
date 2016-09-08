class Fixnum
  def to_roman
    replace_groups(subtractive_roman)
  end

  private

  def subtractive_roman(value = self)
    text = ''
    roman_values.each do |k, v|
      while value - k >= 0
        text += v
        value -= k
      end
    end
    text
  end

  def roman_values
    {
      1000 => 'M',
      500 => 'D',
      100 => 'C',
      50 => 'L',
      10 => 'X',
      5 => 'V',
      1 => 'I'
    }
  end

  def replace_groups(text)
    roman_replacements.each { |k, v| text = text.gsub(k, v) }
    text
  end

  def roman_replacements
    {
      'DCCCC' => 'CM',
      'CCCC' => 'CD',
      'LXXXX' => 'XC',
      'XXXX' => 'XL',
      'VIIII' => 'IX',
      'IIII' => 'IV'
    }
  end

end

class BookKeeping
  VERSION = 2
end
