# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
    result = []
    nums.permutation{|p| result.push(p)}
    result.uniq
end