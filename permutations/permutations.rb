# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    arr = []
    nums.permutation{|p| arr.push(p)}
    arr
end