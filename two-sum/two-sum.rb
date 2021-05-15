# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    num_hash = Hash.new
    nums.each_with_index do |num, i|
        if num_hash[target - num]
            return [i, num_hash[target - num]]
        end
        num_hash[num] = i
    end
end