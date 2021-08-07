# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
    i = 0
    result = []
    (n+1).times do 
        result.push(i.to_s(2).count("1"))
        i += 1
    end
    result
end