public class Main
{
	public static void main(String[] args) {
		long a=0, b=3, c=3;
		long start = System.currentTimeMillis();
		for ( int i=0; i<100000001; i++ ){
            		a = a + (b*2 + c - i);
		}
	    long end = System.currentTimeMillis() - start;
		System.out.println(" a = " + a);
		System.out.println(end + " ms, " );
	}
}