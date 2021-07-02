# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    return [-1, -1] if !nums.any?(target)
    arr = []
    arr.push(nums.index(target))
    arr.push(nums.length - nums.reverse.index(target) - 1)
end