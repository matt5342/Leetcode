# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    obj = {}
    
    numbers.each_with_index do |num, i|
        if obj[target - num]
            return [obj[target - num], i + 1]
        else
            obj[num] = i + 1
        end
    end
    
end