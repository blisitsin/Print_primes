class Calculator
  require 'matrix'

  attr_accessor :primes, :matrix

  def initialize(options = {})
    @primes = options[:primes]
  end

  def length
    length = @primes.length
  end

  def multiply_primes
    @matrix = Matrix.build(length, length) do |row, column|
      @primes[row] * @primes[column]
    end
  end
end
