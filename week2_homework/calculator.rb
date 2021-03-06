class Calculator
  def sum(content)
    total = 0

    content.each do |number|
      total += number
    end

    total
  end

  def multiply(*numbers)
    numbers = numbers.flatten
    numbers[0] * numbers[1]
  end

  def pow(x, y)
    x ** y
  end

  def fac(n)
    if n == 0
      1
    else
      n * fac(n - 1)
    end
  end
end
