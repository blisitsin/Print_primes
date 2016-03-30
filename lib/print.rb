class Print
  require_relative 'primes'
  require_relative 'calculator'

  attr_accessor :count, :primes, :matrix

  def initialize(options = {})
    @count = options[:count]
    @primes = Generator.new(count: @count).generate
    @matrix = Calculator.new(primes: @primes).multiply_primes
  end

  def print
    puts "\t#{@primes.join("\t")}"
    @matrix.to_a.each_with_index do |row, key|
      puts "#{@primes[key]}\t" + row.join("\t").to_s
    end
  end
end
