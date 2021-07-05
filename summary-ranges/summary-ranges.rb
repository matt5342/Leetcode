# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
    return [] if nums.length == 0
    result = []
    i = 0
    while i < nums.length do 
        curr_res = [nums[i]]

        while i < nums.length - 1 && nums[i + 1] - nums[i] == 1
            i += 1
        end
        curr_res.push(nums[i])
        curr_res = curr_res.uniq.join('->')
        result.push(curr_res)

        i += 1
    end
    result
end