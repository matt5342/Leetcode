# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
    s_arr = []
    t_arr = []
    
    s.each_char do |c|
        if c == "#"
            s_arr.pop
        else
            s_arr.push(c)
        end
    end
    t.each_char do |c|
        if c == "#"
            t_arr.pop
        else
            t_arr.push(c)
        end
    end
    return true if s_arr == t_arr
    return false
end