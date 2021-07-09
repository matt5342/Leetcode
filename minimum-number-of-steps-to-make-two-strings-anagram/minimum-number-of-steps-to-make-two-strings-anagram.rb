# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
    
    s_obj = {}
    s.each_char do |c|
        s_obj[c] ||= 0
        s_obj[c] += 1
    end
    
    t.each_char do |c|
        if s_obj[c] && s_obj[c] > 0
            s_obj[c] -= 1
        end
    end
    s_obj.values.sum
end