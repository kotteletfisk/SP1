import java.util.Random;
import java.util.Scanner;

public class Diceroll
{
    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();

        System.out.println("Enter dice type to roll (d2 - d144):");
        String input = scanner.nextLine();

        if (input.length() <= 4 && input.length() > 1 && input.startsWith("d") || input.startsWith("D"))
        {
            int dice = convert(input.substring(1));

            int dice_roll = random.nextInt(1, dice);

            System.out.printf("Rolling %s", input);
            for (int i = 0; i < 8; i++)
            {
                System.out.print('.');
                try {
                    Thread.sleep(200);
                } catch (InterruptedException ie) {
                    Thread.currentThread().interrupt();
                }
            }
            System.out.println(dice_roll + "!");
        }

        else System.out.println("Invalid dice. Usage example 'd12'");
    }

    // Function to convert String to integer
    public static int convert(String str)
    {
        int val = 0;

        // Convert the String
        try
        {
            val = Integer.parseInt(str);
        } catch (NumberFormatException e)
        {

            // This is thrown when the String
            // contains characters other than digits

            System.out.println("Invalid dice. Usage example 'd12'");
        }
        return val;
    }

}
