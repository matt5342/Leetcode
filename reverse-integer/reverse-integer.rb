# @param {Integer} x
# @return {Integer}
def reverse(x)
    
    if x < 0
        x *= -1
        x = x.to_s.reverse.to_i
        x *= -1
    else
        x = x.to_s.reverse.to_i
    end
    if x.bit_length > 31
        return 0
    end
    x

end