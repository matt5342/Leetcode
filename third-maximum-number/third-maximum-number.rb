# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
    nums.uniq!
    nums.sort!
    return nums[nums.length - 3] if nums.length > 2
    return nums[nums.length - 1] 

end