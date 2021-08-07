# @param {String} s
# @return {Boolean}
def check_record(s)
    return false if s.count("A") >= 2
    count = 0
    prev = ""
    s.each_char do |c|
        if c == "L"
            count += 1
            return false if count == 3
        else 
            count = 0
        end
    end
        return true
end