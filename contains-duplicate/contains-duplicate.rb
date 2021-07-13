# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    return true if nums.uniq!
    return false
end