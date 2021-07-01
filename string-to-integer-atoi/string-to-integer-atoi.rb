# @param {String} s
# @return {Integer}
def my_atoi(s)
    s_to_convert = ""
    begun = false
    s.each_char do |c|
        if !begun && c == "-" || "+"
            begun = true
            s_to_convert += c
        elsif c[/\d/]
            begun = true
            s_to_convert += c
        elsif begun && !c[/\d/]
            # puts s_to_convert
            result = s_to_convert.to_i
            if result > 2**31 - 1
                result = 2**31 - 1
            elsif result < -2**31
                result = -2**31
            end
            return result
        end
            
    end
    result = s_to_convert.to_i
    if result > 2**31 - 1 
        result = 2**31 - 1
    elsif result < -2**31
        result = -2**31
    end
    return result
end