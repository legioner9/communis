package SE.Constructor.v2;

class MyParent{
    MyParent(){
        super();
        System.out.println("MyParent constructor called");
    }
}


public class ConstructorExample extends MyParent {
    ConstructorExample(int i){
        super();
        System.out.println("ConstructorExample constructor called i=" + i);
    }

    public static void main(String[] args) {
        new ConstructorExample_WithParConstr(10);
    }

}

//? MyParent constructor called
//? ConstructorExample constructor called i=10