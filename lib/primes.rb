class Generator
  attr_accessor :primes

  def initialize(options = {})
    @count = options[:count]
    @primes = []
  end

  def generate
    i = 1
    until @primes.length >= @count
      @primes << i if is_prime? i
      i += 1
    end
    @primes
  end

  def is_prime?(number)
    (1..number).select{ |y| number % y == 0 }.size == 2
  end
end
