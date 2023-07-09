package SE.Constructor.v1;

public class ConstrCar {
    protected int speed;
    ConstrCar (int speed){
        System.out.println("start constructor ConstrCar");
        this.speed = speed;
    }

    ConstrCar(){
        this.speed = 0;
    }

    ConstrCar(String string){
        System.out.println("string constructor ConstrCar: " + string);
        this.speed = 0;
    }

    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }
}
