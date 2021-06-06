class RandomizedSet

=begin
    Initialize your data structure here.
=end
    def initialize()
        @vals = []
        @vals_obj = {}
    end


=begin
    Inserts a value to the set. Returns true if the set did not already contain the specified element.
    :type val: Integer
    :rtype: Boolean
=end
    def insert(val)
        if !@vals_obj[val]
            @vals_obj[val] = @vals.length
            @vals.push(val)
            return true
        else
            return false
        end
    end


=begin
    Removes a value from the set. Returns true if the set contained the specified element.
    :type val: Integer
    :rtype: Boolean
=end
    def remove(val)
        if @vals_obj[val]
            i = @vals_obj.delete(val)
            @vals[-1], @vals[i] = @vals[i], @vals[-1]
            @vals.pop
            @vals_obj[@vals[i]] = i
            return true
        else 
            return false
        end
    end


=begin
    Get a random element from the set.
    :rtype: Integer
=end
    def get_random()
        @vals.sample
    end


end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()