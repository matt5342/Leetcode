# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
    result = 0
    num1.reverse.each_char.with_index do |c, i|

        if i > 0
            j = 10 if i == 1
            j = 10 ** i if i > 1
            result += (c.ord - 48) * j
        else
            result += c.ord - 48
        end
    end
    num2.reverse.each_char.with_index do |c, i|

        if i > 0
            j = 10 if i == 1
            j = 10 ** i if i > 1
            result += (c.ord - 48) * j
        else
            result += c.ord - 48
        end
    end
    result.to_s
end