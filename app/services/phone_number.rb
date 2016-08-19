class PhoneNumber
  def initialize number, country
    @number = number
    @country = country
  end
  
  def to_formatted
    "#{@number[0...3]}-#{@number[3...7]}-#{@number[7..-1]}"
  end
end
