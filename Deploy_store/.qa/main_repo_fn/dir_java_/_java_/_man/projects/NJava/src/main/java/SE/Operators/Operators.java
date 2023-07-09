package SE.Operators;

public class Operators 
{
    public static void main(String[] args) {
        int a = -2;
        boolean b = (a > 0) ? true : false;
        System.out.println("b = " + b); //? Prints "false"
        Toyota toyota = new Toyota();
        System.out.println("toyota instanceof Car: " +(toyota instanceof Car));

    }
}

class Car{}

class Toyota extends Car{}
