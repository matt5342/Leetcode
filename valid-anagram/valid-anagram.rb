# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)

    return true if s.split('').sort == t.split('').sort
    return false
end