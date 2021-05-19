class Solution {
    public int lengthOfLastWord(String s) {
        if (s.length() == 1) {
            if (s.equals(" ")){
                return 0;
            }
            else{
                return 1;
            }
        }
        String[] s1 = s.split(" ");
        if (s1.length == 0){
            return 0;
        }
        int i = s1[s1.length - 1].length();
        return i;
    }
}