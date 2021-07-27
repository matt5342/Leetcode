# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    return false if n <= 0
    num = Math.log(n, 2).to_i
    return true if 2**num == n || 2**(num+1) == n || 2**(num - 1) == n
    false
end