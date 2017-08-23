# Reverse the text of the string without using the reverse method
string = 'desserts'
rev = ""
for i in (0...string.length).to_a do
  rev += string[string.length - i - 1]
end

#test
puts ("stressed".eql?(rev))
