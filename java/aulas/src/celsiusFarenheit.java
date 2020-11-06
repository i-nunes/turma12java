import java.util.Scanner;

public class celsiusFarenheit {

	public static void main(String[] args) {
		
		double c, f;
		
		Scanner leia = new Scanner(System.in);
		System.out.println("Digite a temperatuna em Celsius");
		
		c = leia.nextDouble();
		f = (c * (9/5)) + 32;
		
		System.out.printf("O valor de %.2f celsius é %.2f farenheit", c, f);
		
	}
}