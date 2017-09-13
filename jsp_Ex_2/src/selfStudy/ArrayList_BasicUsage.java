/*

ArrayList/ 기본 사용법

	1) 구조
		
		객체 생성:
			-자료구조클래스명<저장데이터타입>
			-배열 크기 설정 하고 싶으면 생성자 파라미터 사용.
		
		데이터 추가
		
		데이터 get
			-IndexOutOfBounds Exception 방지를 위해, 데이터 수만큼만 루프 돌림.
		 	
*/

package selfStudy;
import java.util.*;

class ArrayList_BasicUsage {
	
	public static void main(String args[]){
		
		ArrayList<String> list = new ArrayList<String>(10);
		list.add("포도");
		list.add("딸기");
		list.add("복숭아");
    
		int num = list.size();
		for(int cnt=0; cnt<num; cnt++){
			String str=list.get(cnt);
			System.out.println(str);
		}
	}
}
