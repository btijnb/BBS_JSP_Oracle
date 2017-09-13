/*

ArrayList/ 삽입, 수정, 삭제

	삽입: 추가 때와 똑같이 add 메소드 사용
	삭제: 인덱스 or 데이터값으로 삭제대상 지정 가능.
	
	삽입, 삭제(remove) 시, 지정 인덱스 뒤의 데이터 위치 변동.
	

*/

package selfStudy;

import java.util.ArrayList;

class ArrayList_AddSetRemove {
	public static void main(String args[]){
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("포도");
		list.add("딸기");
		list.add("복숭아");
		
		list.add(2, "키위");
		list.set(0, "오렌지");
		list.remove(1);
		list.remove("키위");
		
		int num = list.size();
		for (int cnt=0; cnt < num; cnt++){
			String str=list.get(cnt);
			System.out.println(str);
		}
		
	}
}
