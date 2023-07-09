package SE.Serialization;

import java.io.*;

public class SerializeChaild {
    public static void main(String[] args) throws IOException, ClassNotFoundException {

        ChildUser_3 user = new ChildUser_3();

        FileOutputStream fileOutputStream = new FileOutputStream("files/fileUser_3");
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);

        objectOutputStream.writeObject(user);
        objectOutputStream.close();

        FileInputStream fileInputStream = new FileInputStream("files/fileUser_3");
        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);

        User_3 userUp = (User_3) objectInputStream.readObject();
        Sword_3 sword = userUp.sword;
        System.out.println("sword.level = " + sword.level);    }
}

class User_3 {
    int id = 1;
    Sword_3 sword = new Sword_3();
}

class ChildUser_3 extends User_3 implements Serializable { // ! serializable at last Child

}

class Sword_3 implements Serializable {
    int level = 0;
}


