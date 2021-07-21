# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
    count = -1
    # nums3 = nums2.to_h{|e| [e, count += 1]}
    # nums4 = nums2.sort

    result = []
    nums1.each do |n|
#         find index of number in nums2
        # i = nums3[n]
        i = nums2.index(n)
#         check each element in nums2 after that and find the next largest
        next_lg = 1/0.0
        nums2.slice(i + 1, nums2.length).each do |e|
            next_lg = e if e > n && next_lg == 1 / 0.0
        end
        if next_lg == 1 / 0.0
            result.push(-1)
        else
            result.push(next_lg)
        end
#         find index of sorted number
        # j = nums4.index(n)
        # if !nums
        # pp i

        # pp nums2.slice(i + 1, nums2.length)
    end
    result
end