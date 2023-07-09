package SE.Interface;

 public class Toyota implements ICar {
    String name;

    @Override
    public void setName(String name) {
        this.name = name;
    }
}
