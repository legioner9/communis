package SE.Polimorphism;

public class Toyota extends Car {
    protected byte seats = 2;

    @Override
    protected int drive(){
        return 250;
    }
    protected int driveCar(){
        return new Car().drive();
    }
 }
