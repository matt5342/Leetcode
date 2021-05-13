# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    has_common = add_to_prefix(strs)
    if has_common == false || strs[0].length == 0
        return ""
    end
    i = 1
    while has_common == true
        new_strs = strs.map do |str|
            str = str.slice(i, str.length)
        end
        has_common = add_to_prefix(new_strs)

        i += 1
    end
    return strs[0].slice(0, i - 1)
end

def add_to_prefix(strs)
    if strs[0][0] == nil
        return false
    end
    curr = strs[0][0]
    prev = ""
    strs.each do |str|
        if str[0] != curr
            return false
        end
    end
    return true
end