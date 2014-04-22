class Calculator

  def sum numbers
    total = 0
    numbers.each do |i|
      total += i
    end
    total
  end

  def multiply *numbers
    total = 1
    numbers.reject{|i| i.kind_of? String}
    numbers.flatten.each do |i|
      total *= i if i.respond_to? '*'
    end
    total
  end

  def pow base, exp
    base ** exp
    multiply Array.new(exp, base)
  end



end