# frozen_string_literal: true

def fibs(num)
  fib_numbers = []
  (0...num).each do |i|
    fib = i < 2 ? i : fib_numbers[-1] + fib_numbers[-2]
    fib_numbers << fib
  end
  fib_numbers
end

def fibs_rec(num, prev = [])
  if num.zero?
    prev
  elsif prev.length <= 1
    fibs_rec(num - 1, prev << prev.length)
  else
    fibs_rec(num - 1, prev << (prev[-2] + prev[-1]))
  end
end
