# @param {Integer[]} num
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(num, k)
    (num.join("").to_i + k).to_s.split("").map{|s| s.to_i}
end