# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    nums.tally.to_a.sort_by{|a| a[1]}.last[0]
end