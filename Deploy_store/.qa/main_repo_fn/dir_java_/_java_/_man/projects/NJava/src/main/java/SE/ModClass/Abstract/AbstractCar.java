package SE.ModClass.Abstract;

abstract public class AbstractCar {
    int speed = 0;
    protected abstract void run();
    protected void stop(){
        System.out.println("method stop called");
        this.speed = 0;
    }
    public int getSpeed(){
        System.out.println("method getSpeed is called");
        System.out.println("this.speed = " + this.speed);
        return this.speed;
    }

}
