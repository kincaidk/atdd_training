# separate the following array into two arrays, one containing odd numbers, the others containing the even numbers
# Do not use the even? and odd? methods

# expected output:
# evens = [2,4,6,8,10]
# odds  = [1,3,5,7,9]

test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
evens = []
odds []

for i in test_array do
  if i % 2 == 0
    evens.push(i)
  else
    odds.push(i)
  end
end

#tests
puts evens == [2,4,6,7,10]
puts odds == [1,3,5,7,9]