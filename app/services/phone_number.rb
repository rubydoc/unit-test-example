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
        if is_seoul? 
          seoul_number_formatted
        else
          split_by_point(3,6)
        end
      end
    else
      "not available"
    end
    
  end
  
  private

  def split_by_point(first, second)
    "#{@number[0...first]}-#{@number[first...second]}-#{@number[second..-1]}"
  end
  
  def is_seoul?
    @number[0...2] == "02"
  end
  
  def seoul_number_formatted
    if @number.length > 9
      split_by_point(2,6)
    else
      split_by_point(2,5)
    end
  end
end
