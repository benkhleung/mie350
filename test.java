import java.util.ArrayList;


public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ArrayList<Integer> x = new ArrayList<Integer>();
		for (int k=1; k<=15; k+=2) x.add(k);
		for (int k=1; k<5; k++) x.remove(k);
		for (int k : x) System.out.print(k + "-");
		
		// crap in my bummy hwat 
	}

}
