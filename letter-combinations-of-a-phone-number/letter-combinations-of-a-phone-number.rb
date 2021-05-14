# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    if digits.empty?
        return []
    end
    @digits = digits.split('')
    @final_array = []
    
    build_arr(0, "")
    
    @final_array
end
def build_arr(i, place)
    if place.length == @digits.length
        @final_array.push(place)
        return
    else
        letter_return(@digits[i]).each do |ltr|
            build_arr(i+ 1, place + ltr)
        end
    end
end
    
def letter_return(digit)
    digit = digit.to_i
    digit_letters = []
    if (digit > 6)
        if digit == 7
            j = 4
            k = 94
        elsif digit == 8
            j = 3
            k = 95
        else
            j = 4
            k = 95
        end
    else
        j = 3
        k = 94
    end
    i = 0
    while i < j 
        digit_letters.push((((digit - 1) * 3) + i + k).chr)
        i += 1
    end
    digit_letters
end