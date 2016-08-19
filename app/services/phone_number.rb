class PhoneNumber
  def initialize number, country
    @number = number
    @country = country
  end
  
  def to_formatted
    if @country == "+82"
      if @number.length > 10
        split_by_point(3,7)
      else
        split_by_point(3,6)
      end
    else
      "not available"
    end
    
  end
  
  private

  def split_by_point(first, second)
    "#{@number[0...first]}-#{@number[first...second]}-#{@number[second..-1]}"
  end
end
