# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    result = []
    prev = 0
    nums.each do |n|
        result.push(n + prev)
        prev += n
    end
    result
end