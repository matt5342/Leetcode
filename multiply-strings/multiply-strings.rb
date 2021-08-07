# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
    (num1.each_char.map{|c| c.ord - 48}.inject{|a, i| a * 10 + i} * num2.each_char.map{|c| c.ord - 48}.inject{|a, i| a * 10 + i}).to_s
end