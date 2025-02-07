# 🚀 Two Sum Problem in Ruby

This repository contains an optimized Ruby solution for the **Two Sum** problem using a **HashMap (dictionary)** to achieve a time complexity of **O(n)**.

## 📌 Problem Description

Given an array of integers `nums` and an integer `target`, return the **indices of the two numbers** such that they add up to `target`.

### 🔹 Rules:
- Each input has **exactly one solution**.
- You **cannot use the same element twice**.
- The answer can be returned in any order.

---

## 💻 Solution in Ruby

```ruby
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
```
## 🛠 Solution Approach

The function utilizes a **HashMap** to store previously seen numbers and their respective indices.  
Instead of using a nested loop (**O(n²) complexity**), the solution processes the array in a single pass, achieving an optimized **O(n) complexity**.

### 🔍 Algorithm:
1. Iterate through the array while keeping track of the **current number** and its **index**.
2. Compute the **complement** needed to reach `target`.
3. Check if this complement exists in the **HashMap**.
   - If **yes**, return the indices of the two numbers.
   - If **no**, store the current number and its index in the **HashMap**.
4. The algorithm ensures we find the **only valid solution** efficiently.

---

## ⏳ Complexity Analysis

| Complexity | Value |
|------------|--------|
| **Time**   | **O(n)** (one pass through the array) |
| **Space**  | **O(n)** (storing up to `n` elements in the hash) |

---

## 📌 Constraints

- `2 <= nums.length <= 10⁴`
- `-10⁹ <= nums[i] <= 10⁹`
- `-10⁹ <= target <= 10⁹`
- **Only one valid solution exists.**

---

## 👨‍💻 How to Run

  Clone the repository:

    git clone https://github.com/DragonKzWy/two-sums.git
    cd two-sums

  Run the script:

    ruby two_sum.rb

## 📜 License

This project is open-source and available under the MIT License.

📢 Feel free to contribute and improve the implementation! 🚀
