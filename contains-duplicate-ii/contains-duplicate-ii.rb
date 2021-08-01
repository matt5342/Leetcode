# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
    obj = {}
    nums.each_with_index do |n, i|
        obj[n] ||= []
        obj[n].push(i)
    end

    nums.each_with_index do |n, i|
        next_closest = obj[n][obj[n].index(i) + 1]
        return true if next_closest && next_closest - i <= k
    end
    return false
end