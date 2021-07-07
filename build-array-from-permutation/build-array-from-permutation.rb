# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
    ans = []
    nums.each_with_index do |e, i|
        ans.push(nums[nums[i]])
    end
    ans
        
end