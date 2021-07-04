# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    result = []
    obj = {}
    
    strs.each do |s|
        sorted = s.chars.sort.join
        obj[sorted] ||= []
        obj[sorted].push(s)
    end
        
    obj.values
    
end
