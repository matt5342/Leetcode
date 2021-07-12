# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    s_hsh ={}
    s.each_char do |c|
        s_hsh[c] ||= 0
        s_hsh[c] += 1
    end

    t.length.times do 
        if s_hsh[t[0]] && s_hsh[t[0]] > 0
            s_hsh[t[0]] -= 1
            t.delete_prefix!(t[0])
        end
    end
    return t[0]
end