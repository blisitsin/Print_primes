require 'calculator'
require 'primes'

describe Calculator do
  it 'Tests total primes includes' do
    primes = [2, 3, 5, 7]
    Calculator.new(primes: primes).length.should eq 4
  end
end
