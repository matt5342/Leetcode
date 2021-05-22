# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
    result = []
    if nums1.length > nums2.length 
        longer = nums1
        shorter = nums2
    else
        longer = nums2
        shorter = nums1
    end
    longer.each do |num|
        if shorter.include?(num) 
            result.push(num)
            shorter.delete_at(shorter.index(num))
        end
    end
    result
end
