# @param {String[]} words
# @return {String[]}
def find_words(words)
    row1 = {}
    row2 = {}
    row3 = {}
    "qwertyuiop".each_char do |c|
        row1[c] = 0
    end
    "asdfghjkl".each_char do |c|
        row2[c] = 0
    end
    "zxcvbnm".each_char do |c|
        row3[c] = 0
    end
    result = []
    words.each do |word|
        in_row = true
        downed = word.downcase
        if row1[downed[0]]
            downed.each_char do |c|
                if !row1[c]
                    in_row = false
                end
            end
        elsif row2[downed[0]]
            downed.each_char do |c|
                if !row2[c]
                    in_row = false
                end
            end
        elsif row3[downed[0]]
            downed.each_char do |c|
                if !row3[c]
                    in_row = false
                end
            end
        else 
            in_row = false
        end
        in_row ? result.push(word) : nil
    end
    result
end