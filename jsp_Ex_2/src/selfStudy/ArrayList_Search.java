/*

ArrayList/ Search
	
	1) 구조
		
		찾는 값의 index 리턴
		찾는 값(중복)의 마지막 index 리턴

*/

package selfStudy;

import java.util.ArrayList;

class ArrayList_Search {
	public static void main(String args[]){
		ArrayList<String> list = new ArrayList<String>();
		list.add("머루");
		list.add("사과");
		list.add("앵두");
		list.add("자두");
		list.add("사과");
		
		int index1 = list.indexOf("사과");
		int index2 = list.lastIndexOf("사과");
		System.out.println("첫 번째 사과: "+index1);
		System.out.println("마지막 사과: "+index2);
	}
}
