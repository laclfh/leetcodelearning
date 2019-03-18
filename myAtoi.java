public int myAtoi(String str){//父母给的叫背景，自己打下来的，才叫江山！
	if(str ==null || str.length()==0)  return 0;
	str = str.trim();
	char firstChar = str.charAt(0);
	int sign = 1;
	int start = 0;
	long res = 0;
	if(firstChar == '+'){
		sign=1;
		start++;
	}else if(firstChar == '-'){
		sign = -1;
		start++;
	}//不是正负号的话，从0开始
	for(int i=start;i < str.length();i++){
		if(!Character.isDigit(str.charAt(i))){
			return (int) res*sign;
		}
		res = res * 10 + str.charAt(i) - '0';
		if(sign == 1 && res > Integer.MAX_VALUE) return Integer.MAX_VALUE;
		if(sign == -1 && res > Integer.MAX_VALUE) return Integer.MAX_VALUE;
	}
	return (int)res*sign;
}