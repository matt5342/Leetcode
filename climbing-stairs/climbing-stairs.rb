# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    prev = 0
    curr = 1
    n.times do |num|
        temp = curr
        curr = prev + curr
        prev = temp
        
    end
    return curr
end