# Write a method that verifies the sort order of the following contract statuses
# The correct sort order is all Active contracts then Restricted contracts followed by Inactive contracts
#
# tips: The method can just return a simple true/false value
#
# expected output:
#  true
#  false
#  true
#  false


contracts_1 = %w(Active Restricted Restricted Inactive Inactive Inactive)
contracts_2 = %w(Active Restricted Active Inactive)
contracts_3 = %w(Active Inactive)
contracts_4 = %w(Active Active Active Restricted Inactive Restricted Inactive )

#Method goes here

def verifyOrder(string)
  arr = string.split(" ")
  chars = ['A', 'R', 'I']
  for i in (0...arr.length) do
    while st[0] == 'A'
      if not arr[i].include?('A')
        return false
      end
      arr[i].delete_at(0)
    end

    while arr[i][0] == 'R'
      if not arr[i].include?('R')
        return false
      end
      arr[i].delete_at(0)
    end
    chars.delete('A')

    while arr[i][0] == 'I'
      if not arr[i].include?('I')
        return false
      end
      arr[i].delete_at(0)
    end
    chars.delete('R')
  end
  return true
end

# method call goes here
for i in [contracts_1, contracts_2, contracts_3, contracts_4] do
  puts verifyOrder(i)
end

#tests
puts verfiyOrder(contracts_1) == true
puts verfiyOrder(contracts_2) == false
puts verfiyOrder(contracts_3) == true
puts verfiyOrder(contracts_4) == false