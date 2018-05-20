import java.util.Scanner;

public class HelloWorld {
	public static void main(String[] args) {
		int myNumber = 5;
		double d = 4.5;
		float f = 4.5f;
		char c = 'g';
		// Create a string with a constructor
		String s1 = new String("Who let the dogs out? ");
		// Just using "" creates a string, so no need to write it the previous way.
		String s2 = "Who who who who!";
		// Java defined the opera tor + on strings to concatenate:
		String s3 = s1 + s2;
		boolean b = false;
		int[] arr = {1, 2, 3, 4, 5};
		int[] arr1 = new int[5];
		// System.out.println("Array length: " + arr1.length);
		//accesses and sets the first element
		arr1[0] = 4;


		System.out.println(b);


		// Scanner reader = new Scanner(System.in);  // Reading from System.in
		// System.out.printf("Enter a number: ");
		// int n = reader.nextInt(); // Scans the next token of the input as an int.
		// //once finished
		// reader.close();

		// if (n <= 4) {
		// 	String output = String.format("%s <= 4 : true", n);
		// 	System.out.println(output);
		// } else if (n == 2) {
		// 	String output = String.format("%s = 2 : true", n);
		// 	System.out.println(output);
		// } else {
		// 	// Prints "Hello, World" in the terminal window.
		// 	System.out.println("Hello World!");
		// }


		// for (int i = 0; i < 3; i++) {
		// 	System.out.println("for loop 1");
		// }
		// // for (;i < 5;) {
		// // 	System.out.println("for loop 2");
		// // }
		// int e;
		// for (e = 0; e < 5; e++) {
	 //    if (e >= 2) {
	 //      break;
	 //    }
	 //    System.out.println("for loop 2 with a break");
		// }
		// System.out.println(e);


		// System.out.println("for each loop 1");
		// int[] arr3 = {2, 0, 1, 3};
		// for (int el : arr3) {
		//   System.out.println(el);
		// }
		// System.out.println("for each loop 2");
		// int[] arr4 = {1, 9, 9, 5};
		// for (int i = 0; i < arr4.length; i++) {
		//   int el = arr4[i];
		//   System.out.println(el);
		// }


		// int z = 1;
		// while (z == 1) {
		// 	System.out.println("while loop 1");
		// 	z = 2;
		// }
		// do {
		// 	System.out.println("while loop 2");
		// 	z = 2;
		// } while(z == 1);

	}
}
