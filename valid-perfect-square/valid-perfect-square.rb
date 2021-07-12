# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
    (0..num).bsearch{|n| n*n >= num} ** 2 == num
end