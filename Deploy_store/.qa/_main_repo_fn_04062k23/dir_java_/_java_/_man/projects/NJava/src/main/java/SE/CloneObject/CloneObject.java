package SE.CloneObject;

public class CloneObject {
    public static void main(String[] args) throws CloneNotSupportedException {
        MyObject myObject = new MyObject();
        MyObject myObject2 = myObject.clone();
        myObject.value = 10;

        System.out.println( "myObject.value = " + myObject.value ); // ? 10
        System.out.println( "myObject2.value = " + myObject2.value ); // ? 0



        myObject.inObjectValue = new InObject(200);
//        myObject2.inObjectValue = new InObject(300);

        System.out.println("myObject.inObjectValue.inInObjectValue: " + myObject.inObjectValue.inInObjectValue);
        System.out.println("myObject2.inObjectValue.inInObjectValue: " + myObject2.inObjectValue.inInObjectValue);

    }
}

class MyObject implements Cloneable{
    int value = 0;
    InObject inObjectValue = new InObject(100);

    @Override
    protected MyObject clone() throws CloneNotSupportedException {
        return (MyObject) super.clone();
    }
}

class InObject{
    int inInObjectValue = 50;
    InObject(int inInObjectValue){
        this.inInObjectValue = inInObjectValue;
    }

}


