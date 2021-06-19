# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
    find_kth_smallest(matrix.flatten, k)
end

def find_kth_smallest(nums, k)
    quick_select(nums, 0, nums.length - 1, k)
end

def quick_select(arr, left, right, k)
    partition = partition(arr, left, right)
    
	if partition == k - 1
		return arr[partition]
	elsif partition < k - 1
		quick_select(arr, partition + 1, right, k)
	else
		quick_select(arr, left, partition - 1, k)
	end
end

def partition(arr, low, high)
    pivot_ele = arr[high]
    pivot_index = low
    
    while low <= high
		if arr[low] < pivot_ele
			arr[pivot_index], arr[low] = arr[low], arr[pivot_index]
			pivot_index += 1
		end
		low += 1
    end
    arr[pivot_index], arr[high] = arr[high], arr[pivot_index]

	return pivot_index
    
end