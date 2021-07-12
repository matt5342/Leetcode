# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)

    t.each_char do |c|
        if c == s[0]
            s.delete_prefix!(s[0])
        end
    end
    return true if s.length == 0
    return false
end