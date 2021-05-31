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
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
    if !root 
        return false
    elsif root.val == target_sum && !root.left && !root.right
        return true
    else
        if has_path_sum(root.left, target_sum - root.val) || 
            has_path_sum(root.right, target_sum - root.val)
            return true
        else
            return false
        end
    end
end