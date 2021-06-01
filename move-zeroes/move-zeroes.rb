# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    zeros = 0
    nums.delete_if do |num| 
        if num == 0 
            zeros += 1 
            true
        else 
            false
        end
    end
    
    zeros.times do
        nums.append(0)
    end
end