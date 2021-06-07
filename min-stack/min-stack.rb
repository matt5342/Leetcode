class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
        @vals = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        @vals.push(val)
    end


=begin
    :rtype: Void
=end
    def pop()
        num = @vals.pop
    end


=begin
    :rtype: Integer
=end
    def top()
        return @vals[-1]
    end


=begin
    :rtype: Integer
=end
    def get_min()
        @vals.min
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()