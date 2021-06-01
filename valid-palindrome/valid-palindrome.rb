# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    s = s.each_char.select{|c| c =~ /\A\p{Alnum}+\z/}
    ptrA = 0
    ptrB = s.length - 1
    if s.length == 0
        return true
    end
    while s[ptrA].downcase == s[ptrB].downcase
        ptrA += 1
        ptrB -= 1
        if ptrA > ptrB
            return true
        end
    end
    return false
end