package SE.Serialization;

import java.io.*;

public class WithTransient {
    public static void main(String[] args) throws IOException {

        User_2 user = new User_2();

        FileOutputStream fileOutputStream = new FileOutputStream("files/fileUser_2");
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);

        objectOutputStream.writeObject(user);
        objectOutputStream.close();

        FileInputStream fileInputStream = new FileInputStream("files/fileUser");
        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);


    }
}

class User_2 implements Serializable{
    int id = 1;
    transient Sword sword = new Sword(); //! transient state because Sword not implements Serializable
}

class Sword{
    int level = 0;
}
