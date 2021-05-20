class Solution {
    public String interpret(String command) {
        String s = "";
        boolean paren = false;
        for (int i = 0; i < command.length(); i++){
            if(command.charAt(i) == '(' ){
                paren = true;    
            }
            else if (command.charAt(i) == ')'){
                paren = false; 
                if (command.charAt(i - 1) == '('){
                    s += "o";
                }
            }
            if(paren == false && (command.charAt(i) == 'G')){
                s += "G";
            }
            else if (paren == true && (command.charAt(i) == 'a')){
                s += "al";
                i++;
            }
            
        }
        
        return s;
    }
}