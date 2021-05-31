# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    if !root
        return 0
    else
        left = min_depth(root.left)
        right = min_depth(root.right)
        if left == 0
            return right + 1
        elsif right == 0 
            return left + 1
        else
            return [left, right].min + 1
        end
    end
end