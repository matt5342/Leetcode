# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    if num_rows == 1
        return s
    end
    s = s.split('')
    result = Hash.new
    row_num = 1
    cycle = true
    i = 1
    num_rows.times do 
        result[i] = []
        i += 1
    end
    s.each do |ele|
        
        result[row_num].push(ele)
        if row_num < num_rows && cycle == true
            row_num += 1
        elsif row_num == num_rows
            row_num -= 1
            cycle = false
        elsif row_num == 1
            cycle = true
            row_num += 1
        else
            row_num -= 1
        end
    end
    i = 1
    result_str = ""
    num_rows.times do 
        result[i].each do |j|
            result_str += j
        end
        i += 1
    end
    result_str
    
end