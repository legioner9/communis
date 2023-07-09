package SE.ModClass.Abstract;

public class Ferrary extends AbstractCar{
    @Override
    protected  void run(){
        System.out.println("method run is called");
        this.speed = 100;
    }
}
