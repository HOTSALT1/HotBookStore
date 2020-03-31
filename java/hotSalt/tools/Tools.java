package hotSalt.tools;


public class Tools {
	
	public static void main(String[] args) {
		System.out.println(new Tools().getInitial("가나 다라마abc"));
	}

	public String getInitial(String fullStr) {
		String resultStr="";

		for (int i = 0; i < fullStr.length(); i++) {
			char comVal = (char) (fullStr.charAt(i)-0xAC00);
	
			if (comVal >= 0 && comVal <= 11172){
				// 한글일경우 
					// 초성만 입력 했을 시엔 초성은 무시해서 List에 추가합니다.
					char uniVal = (char)comVal;
	
					// 유니코드 표에 맞추어 초성 중성 종성을 분리합니다..
					char cho = (char) ((((uniVal - (uniVal % 28)) / 28) / 21) + 0x1100);
					char jung = (char) ((((uniVal - (uniVal % 28)) / 28) % 21) + 0x1161);
					char jong = (char) ((uniVal % 28) + 0x11a7);
	
					if(cho!=4519){
						System.out.print(cho+" ");
						resultStr =resultStr + cho;
					}
	
					if(jung!=4519){
						//System.out.print(jung+" ");
					}
	
					if(jong!=4519){
						//System.out.print(jong+" ");
					}
	
			} else {
				// 한글이 아닐경우
				comVal = (char) (comVal+0xAC00);
				resultStr =resultStr + comVal;				
			}
		}
		return resultStr;
	}
}



