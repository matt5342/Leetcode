# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    hash = {}
    count = nums.length
    i = 0
    while i < count 
        hash[nums[i]] ||= 0
        hash[nums[i]] += 1
        if hash[nums[i]] > 2
            count -= 1
            hash[nums[i]] -= 1
            nums.push(nums.delete_at(i))
            i -= 1
        end
        i += 1
    end
    # nums.each_with_index do |num, i|
    #     hash[num] ||= 0
    #     hash[num] += 1
    #     if hash[num] > 2
    #         count -= 1
    #         nums.push(nums.delete_at(i))
    #         hash[num] -= 1
    #     end
    # end
    count
end