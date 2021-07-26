# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)

    (n /= 5) > 0 ? n + trailing_zeroes(n) : 0
    
end