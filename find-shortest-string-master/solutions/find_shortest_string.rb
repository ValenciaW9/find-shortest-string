def find_shortest_string(arr)
  arr.reduce do |shortest, string| 
    string.length < shortest.length ? string : shortest
  end
end

puts "Expecting: 'a'"
puts find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

puts 'a'

puts "Expecting: 'hi'"
puts find_shortest_string(['cat', 'hi', 'dog', 'an'])

puts 'hi'

puts "Expecting: 'lily'"
puts find_shortest_string(['flower', 'juniper', 'lily', 'dandelion'])

puts 'Lily'

puts "Expecting: 'cat'"
puts find_shortest_string(['cat'])

puts 'cat'

# Don't forget to add your own!

# BENCHMARK HERE
start_time = Time.now

1000.times do
  find_shortest_string(['flower', 'juniper', 'lily', 'dandelion'])
end

avg_time = (Time.now - start_time) / 1000.0
puts avg_time

#tests
RSpec.describe '#find_shortest_string' do
  it 'can handle an array containing one string' do
    expect(find_shortest_string(['cat'])).to eq('cat')
  end

  it 'returns the shortest string when there is only one' do
    expect(find_shortest_string(['dogbaby', 'cat', 'jammy', 'hamtaro'])).to eq('cat')
  end

  ##############################################################################
  # store the first string from the array in a variable called shortest
  #
  # iterate over the array:
  #   if the length of the current string < shortest:
  #     shortest = current string
  #
  # return shortest
  ##############################################################################

  # And a written explanation of your solution
  ##############################################################################
  # We can get the first occurrence of the shortest string by storing the first
  # string in the input array in a variable. As we iterate over the array, we
  # check if the current string is shorter than the shortest string. If it is,
  # we store the current string as the shortest string. Since we are checking if
  # subsequent strings are shorter than the shortest string, we will always return
  # the first occurrence of the shortest string. If we iterated over a string of
  # equal length to the shortest string, the value stored wouldn't change.
  ##############################################################################
end