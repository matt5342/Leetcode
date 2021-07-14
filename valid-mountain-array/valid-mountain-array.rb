# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
    return false if arr.length < 3
    increasing = true
    prev = arr[0]
    i = 1
    while increasing
        if arr[i] > prev
            prev = arr[i]
        elsif arr[i] == prev
            return false
        else
            if i == 1
                return false
            end
            increasing = false
            i -= 1
        end
        i += 1
        return false if i >= arr.length 
    end
    return false if increasing
    
    while i < arr.length

        if arr[i] < prev
            prev = arr[i]
        else arr[i] == prev
            return false
        end
        i += 1
    end
    true
end