class Solution {
    public int maxSubArray(int[] nums) {
        int max = nums[0];
        int prevSum;
        for(int i = 0; i < nums.length; i++){
            prevSum = nums[i];
            if (prevSum > max){
                max = prevSum;
            }
            for(int j = i + 1; j < nums.length; j++){
                prevSum += nums[j];

                if (prevSum > max){
                    max = prevSum;
                }
            }
        }
        return max;
    }
}