# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
    prev = -(1/0.0)
    inc = true
    if nums[0] <= nums.last
        for n in nums
            return false if n < prev
            prev = n
        end
    else
        prev = 1/0.0
        for n in nums
            return false if n > prev
            prev = n
        end
    end
    return true
end