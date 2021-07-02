# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    return -1 if !nums.any?(target)
    return nums.index(target)
end