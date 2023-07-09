package SE.Encapsulation;

public class Person {
    protected String name = "Piter";
    protected int age = 0;

    public String getName() {
        return name + " " + age;
    }
    public void setAge(int age) {
        this.age = age;
    }
}
