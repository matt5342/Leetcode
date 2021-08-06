# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
    letters.each do |c|
        if c > target
            return c
        end
    end
    letters.first
end