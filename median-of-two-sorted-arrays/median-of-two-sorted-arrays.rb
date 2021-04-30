# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums = (nums1 + nums2).sort

    total = 0.0
    if nums.length > 0
        if nums.length == 1
            return nums[0]
            
        elsif nums.length.odd?
            return nums[nums.length / 2]
        end
        total += nums[nums.length / 2] + nums[(nums.length / 2) - 1]
    end
    average = total / 2.0

end