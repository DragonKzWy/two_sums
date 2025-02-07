def two_sum(nums, target)
  hash = {}  # Initialize an empty hash to store seen numbers

  nums.each_with_index do |num, index|  # Iterate through the array with index
    complement = target - num  # Calculate the complement needed to reach the target
    
    if hash.key?(complement)  # Check if the complement has already been seen
      return [hash[complement], index]  # Return the indices of the solution found
    end
    
    hash[num] = index  # Store the number and its index in the hash
  end
end

# Testing the function
puts two_sum([2, 7, 11, 15], 9).inspect  # Output: [0, 1]
puts two_sum([3, 2, 4], 6).inspect       # Output: [1, 2]
puts two_sum([3, 3], 6).inspect          # Output: [0, 1]