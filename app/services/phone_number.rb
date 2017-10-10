class PhoneNumber
  def initialize number, country
    @number = number
    @country = country
  end

  def to_formatted
    if @country == "ko"
      split_by_point(first_splitter, second_splitter)
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

  def first_splitter
    is_seoul? ? 2 : 3
  end

  def second_splitter
    @number.length - 4
  end
end
