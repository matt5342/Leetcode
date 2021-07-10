# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
    return true if (s.length == 0 && goal.length == 0)

    arr = s.split('')
    goal = goal.split('')
    
    i = 1
    arr.length.times do
        return true if arr.rotate(i) == goal
        i += 1
    end
    return false
    
end