# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
    
    obj = nums.to_h{|c| [c,0]}
    result = []
    i = 1
    nums.length.times do 
        result.push(i) if !obj[i]
        i += 1
    end
    result
end