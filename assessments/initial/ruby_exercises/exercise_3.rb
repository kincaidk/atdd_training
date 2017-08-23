# Reverse the words of the string
string = 'I love Ruby!'
arr = string.split(" ")

for i in arr do
  i.reverse
end
string = arr.reverse.join("")

#test
puts string.eql?("I evol ybuR")
