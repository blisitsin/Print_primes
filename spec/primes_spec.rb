require 'primes'
require 'calculator'
require 'debugger'

describe Generator do

  it "Tests prime number includes" do
    expect(Generator.new(count: 10).generate).to include(2)
  end

  it "Tests first prime number" do
    expect(Generator.new(count: 10).generate).to start_with(2)
  end
end
