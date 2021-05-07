# @param {String} s
# @return {Integer}
def roman_to_int(s)
    numeral_array = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
    numeral_hash = Hash.new
    factor = true
    i = 1
    numeral_array.each do |sym|
        numeral_hash[sym] = i
        factor == true ? i *= 5 : i *= 2
        factor = !factor
    end    
    #numeral_hash['I'] = 1
    total = 0
    s = s.split('')
    i = s.length - 1
    while i >= 0 do
        total += numeral_hash[s[i]]
        if i > 0
             if (numeral_hash[s[i - 1]] == (numeral_hash[s[i]] / 5) ||                                numeral_hash[s[i - 1]] == (numeral_hash[s[i]] / 10))
                 total -= numeral_hash[s[i - 1]]
                 i -= 1
             end
        end
        i -= 1
    end

    return total
end