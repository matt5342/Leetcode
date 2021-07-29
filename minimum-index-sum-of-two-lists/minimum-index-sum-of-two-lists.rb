# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
    h = {}
    result = []
    list1.each_with_index do |e, i|
        h[e] = i
    end
    sum = 1/0.0
    list2.each_with_index do |e, i|
        if h[e]
            if h[e] + i <= sum
                if h[e] + i == sum
                    result.push(e)
                else
                    sum = h[e] + i
                    result = [e]
                end
            end
        end
    end
    result
end