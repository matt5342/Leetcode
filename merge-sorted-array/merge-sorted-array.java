class Solution {
    public void merge(int[] nums1, int m, int[] nums2, int n) {

        int[] arr = new int[n + m];
        // compare first ele of each array
        // insert smaller into arr
        // whichever got inserted move up an index and insert smaller again
        // if reached the end of either array, fill in the rest of the result array with remaining elements
        int i = 0; // nums1 index
        int j = 0; // nums2 index
        int k = 0; // result arr
        
        while (i < m && j < n) {
            if (nums1[i] < nums2[j]){
                arr[k] = nums1[i];
                i++;
            }
            else {
                arr[k] = nums2[j];
                j++;
            }
            k++;
        }
        while (i < m){
            arr[k] = nums1[i];
            i++;
            k++;
        }
        while (j < n) {
            arr[k] = nums2[j];
            j++;
            k++;
        }
        
        for(int a = 0; a < (n + m); a++){
            nums1[a] = arr[a];
        }
    }
}