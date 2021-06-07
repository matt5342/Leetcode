# @param {String} first_word
# @param {String} second_word
# @param {String} target_word
# @return {Boolean}

def is_sum_equal(first_word, second_word, target_word)
    ltr_vals = {
    'a': '0',
    'b': '1',
    'c': '2',
    'd': '3',
    'e': '4',
    'f': '5',
    'g': '6',
    'h': '7',
    'i': '8',
    'j': '9'
    }
    first_str = ""
    second_str = ""
    target_str = ""

    first_word.each_char {|c| first_str += ltr_vals[c.to_sym]}
    second_word.each_char {|c| second_str += ltr_vals[c.to_sym]}
    target_word.each_char {|c| target_str += ltr_vals[c.to_sym]}
    return true if first_str.to_i + second_str.to_i == target_str.to_i
    
    return false
end