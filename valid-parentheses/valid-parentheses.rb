# @param {String} s
# @return {Boolean}
def is_valid(s)
    # return false if s.length == 1
    arr = []
    obj = {
        '(': ')',
        '{': '}',
        '[': ']'
    }
    
    s.each_char do |c|
        if obj[:"#{c}"]
            arr.push(c)
        elsif obj[:"#{arr.last}"] == c
            arr.pop
        else
            return false
        end
    end
    return true if arr.length == 0
    return false
end