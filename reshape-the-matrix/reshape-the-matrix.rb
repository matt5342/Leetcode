# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
    if (mat.length * mat[0].length) != r * c
        return mat
    end
    result = []
    inner = []
    count = 0
    mat.each do |row|
        row.each do |num|
            if count < c
                count += 1
                inner.push(num)
                
            elsif count == c
                result.push(inner)
                count = 1
                inner = [num]
            end
        end
    end
    if inner.length > 0
        result.push(inner)
    end
    result
end