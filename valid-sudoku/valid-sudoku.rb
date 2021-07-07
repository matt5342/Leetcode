# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    board.each do |row|
        return false if !valid_arr(row)
    end
    
    board.flatten!
    i = 0
    9.times do 
        j = 0
        col = []
        9.times do
            col.push(board[i + j])
            j += 9
        end
        # pp col
        return false if !valid_arr(col)
        i += 1
    end
    k = 0
    3.times do
        i = 0
        3.times do
            j = 0
            box = []
            3.times do 
                box.push(board.slice(i + j + k, 3))
                j += 9
            end
            # pp box
            return false if !valid_arr(box.flatten)
            i += 3
        end
        k += 27
    end
    return true
end

def valid_arr(arr)
    arr2 = arr.join.scan(/[0-9]/)
    # pp arr
    # return false if arr2.max.to_i > 9 || arr2.min.to_i < 1
    return true if arr2.uniq.length == arr2.length
    return false
end