# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    h = {}
    
    s.each_char.with_index do |c, i|
        h[c] ||= 0
        h[c] += 1
    end
    # pp h
    s.each_char.with_index do |c, i|
        if h[c] < 2
            return i
        end
    end
    return -1
end