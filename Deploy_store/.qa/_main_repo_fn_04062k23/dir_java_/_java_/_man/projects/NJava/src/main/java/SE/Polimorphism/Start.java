package SE.Polimorphism;

public class Start {
    public static void main(String[] args) {
        System.out.println("new SE.Inheritance.Car().drive(): " + new Car().drive());
        System.out.println("new SE.Inheritance.Toyota().drive(): " + new Toyota().drive());
        System.out.println("new SE.Inheritance.Toyota().driveCar(): " + new Toyota().driveCar());

        Car car = new Toyota(); // new Toyota as Car without car.seats
        System.out.println("car.drive(): " + car.drive());
//        System.out.println("car.seats: " + car.seats); // error

    }
}
