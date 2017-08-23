#separate the following array into two arrays, one containing numbers that are square, the others containing numbers that are not square

# expected output:
# squares = [1,4,9]
# not_squares  = [2,3,5,7,8,10]

test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

sq = []
no = []

for i in test_array do
  if Math.sqrt(i) % 1 == 0
    sq.push(i)
  else
    no.push(i)
  end
end

#tests
puts sq == [1,4,9]
puts no == [2,3,5,6,7,8,10]