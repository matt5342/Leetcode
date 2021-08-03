# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
    arr.sort!
    min = 1/0.0
    prev = arr[0]
    arr.each do |n|
        if n - prev > 0 && n - prev < min
            min = n - prev
        end
        prev = n
    end
    prev = arr[0]
    result = []
    arr.each do |n|
        if n - prev == min
            result.push([prev, n])
        end
        prev = n
    end
    result
end