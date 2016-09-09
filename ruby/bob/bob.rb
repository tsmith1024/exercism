class Bob
  def hey(remark)
    return 'Whoa, chill out!' if shouting?(remark)
    return 'Sure.' if question?(remark)
    return 'Fine. Be that way!' if empty?(remark)
    'Whatever.'
  end

  private

  def shouting?(remark)
    remark.upcase == remark && remark.gsub(/[a-z]/i, '') != remark
  end

  def question?(remark)
    remark.end_with?('?')
  end

  def empty?(remark)
    remark.strip == ''
  end
end
