class MyQueue

=begin
    Initialize your data structure here.
=end
    def initialize()
        @vals = []
    end


=begin
    Push element x to the back of queue.
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @vals.push(x)
    end


=begin
    Removes the element from in front of queue and returns that element.
    :rtype: Integer
=end
    def pop()
        @vals.shift
    end


=begin
    Get the front element.
    :rtype: Integer
=end
    def peek()
        @vals[0]
    end


=begin
    Returns whether the queue is empty.
    :rtype: Boolean
=end
    def empty()
        @vals.length == 0
    end


end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()