package SE.Constructor.v1;

public class Start {
    public static void main(String[] args) {

        System.out.println("ConstrCar car = new ConstrCar(100)");
        ConstrCar car = new ConstrCar(100);
        System.out.println("car.getSpeed()) = " + car.getSpeed());
        System.out.println("car.setSpeed(150)");
        car.setSpeed(150);
        System.out.println("new ConstrCar.getSpeed() = " + car.getSpeed());

        System.out.println();

        System.out.println("ConstrCar car1 = new ConstrCar()");
        ConstrCar car1 = new ConstrCar();
        System.out.println("car1.getSpeed()) = " + car1.getSpeed());
        System.out.println("car1.setSpeed(150)");
        car1.setSpeed(150);
        System.out.println("car1.getSpeed()) = " + car1.getSpeed());

        System.out.println();

        System.out.println("ConstrCar car2 = new ConstrCar()");
        ConstrCar car2 = new ConstrCar("STRING argument");

    }
}
