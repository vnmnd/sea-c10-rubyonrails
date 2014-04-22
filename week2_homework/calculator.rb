class Calculator

  def sum numbers
    numbers.inject(0, :+)
  end

  def multiply *numbers
    numbers.flatten.inject(:*)
  end

  def pow base, exp
    base ** exp
    multiply Array.new(exp, base)
  end

  def fac n
    return 1 if n.zero?
    n.downto(1).inject(:*)
    # n * fac(n-1)
    # 5 * 4 * 3 * 2 * 1 * 1
    # 4 * 3 * 2 * 1 * 1
    # 3 * 2 * 1 * 1
    # 2 * 1 * 1
    # 1 * 1
    # 1
    #multiply (1..n).to_a
  end
end