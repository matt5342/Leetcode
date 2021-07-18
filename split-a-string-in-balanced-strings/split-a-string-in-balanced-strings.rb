# @param {String} s
# @return {Integer}
def balanced_string_split(s)
    subs = 0
    count = 0
    
    s.each_char do |c|
        c == "L" ? count += 1 : count -= 1
        subs += 1 if count == 0
    end
    subs
end