package SE.Constructor.v2;

 class MyParent2 {
    MyParent2(int x) {
        super();
        System.out.println("MyParent2 constructor called with x=" + x );
    }
}


public class ConstructorExample_WithParConstr extends MyParent2 {

    ConstructorExample_WithParConstr(int i){
        super(i); //! [Construct] mast containing int values from Parent2
        System.out.println("ConstructorExample_WithParConstr constructor called i=" + i);
    }

    public static void main(String[] args) {
        new ConstructorExample_WithParConstr(10);
    }

}

//? MyParent2 constructor called with x=10
//? ConstructorExample_WithParConstr constructor called i=10

