/*

ArrayList/ �⺻ ����

	1) ����
		
		��ü ����:
			-�ڷᱸ��Ŭ������<���嵥����Ÿ��>
			-�迭 ũ�� ���� �ϰ� ������ ������ �Ķ���� ���.
		
		������ �߰�
		
		������ get
			-IndexOutOfBounds Exception ������ ����, ������ ����ŭ�� ���� ����.
		 	
*/

package selfStudy;
import java.util.*;

class ArrayList_BasicUsage {
	
	public static void main(String args[]){
		
		ArrayList<String> list = new ArrayList<String>(10);
		list.add("����");
		list.add("����");
		list.add("������");
    
		int num = list.size();
		for(int cnt=0; cnt<num; cnt++){
			String str=list.get(cnt);
			System.out.println(str);
		}
	}
}
