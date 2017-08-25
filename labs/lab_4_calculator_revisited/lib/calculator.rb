class Calculator
  def add(*nums)
    nums.reduce(:+)
  end


  def subtract(*nums)
    nums.reduce(:-)
  end


  def multiply(*nums)
    nums.reduce(:*)
  end


  def divide(*nums)
    nums.reduce(:/)

    # if nums.include?(0), raises ZeroDivisionError

  end
end