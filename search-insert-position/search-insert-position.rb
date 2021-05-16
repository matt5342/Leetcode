# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    binary_search(nums, target)
    
end

def binary_search(arr, n)
  i = 0
  j = arr.length - 1
  k = 0
  while (i <= j) 
      m = i + (j - i) / 2; 
      if (arr[m] == n) 
          return m
      end
      if (arr[m] < n) 
          i = m + 1; 
      else
          j = m - 1; 
      end 
  end
    n < arr[0] ? m = 0 : n < arr[i - m - 1] ? m : m += 1
  return m
end 