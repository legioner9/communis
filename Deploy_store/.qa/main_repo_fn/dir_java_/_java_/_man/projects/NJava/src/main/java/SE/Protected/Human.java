package SE.Protected;

public class Human {
    private int weight = 60;
    protected void sport(){
        weight --;
    }
    public int getWeight(){
        return weight;
    }
}
