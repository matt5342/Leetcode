# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    
    h = {}
    magazine.each_char do |c|
        h[c] ||= 0
        h[c] += 1
    end
    ransom_note.each_char do |c|
        if h[c] && h[c] > 0
            h[c] -= 1
        else 
            return false
        end
    end
    return true
end