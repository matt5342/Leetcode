# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    # nums.select{|n| nums.one?(n)}[0]
#     count = {}
#     prev_single = nums[nums.length - 1]
#     curr_single = nums[0]
#     nums.each do |n|
        
#         if count[n]
#             # curr_single = prev_single
#         else
#             count[n] = 0
#             curr_single = n            
#         end
#     end
#     curr_single
    2 * nums.uniq.sum - nums.sum
end