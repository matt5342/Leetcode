# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
    obj = text.chars.tally
    arr = "balloon".chars
    count = 0
    still = true
    while still
        arr.each do |c|
            if !obj[c] || obj[c] <= 0
                still = false
            else
                obj[c] -= 1
            end
        end
        count += 1 if still
    end
    count
end