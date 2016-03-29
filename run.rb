require './lib/print'

# Get argument.
count = ARGV[0].to_i
Print.new(count: count).print
