package SE.Serialization;

import java.io.*;

public class Serialization {
    public static void main(String[] args) throws IOException, ClassNotFoundException {
        User user = new User();

        user.setId(100);
        user.setSerialVersionUID(20);

        System.out.println("user.getId() = " + user.getId());
        System.out.println("User.getSerialVersionUID() = " + user.getSerialVersionUID());


        FileOutputStream fileOutputStream = new FileOutputStream("files/fileUser");
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);

        objectOutputStream.writeObject(user);
        objectOutputStream.close();

        FileInputStream fileInputStream = new FileInputStream("files/fileUser");
        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);

        user.setSerialVersionUID(30);

        User userUp = (User) objectInputStream.readObject();
        System.out.println("userUp.getId() = " + userUp.getId());
        System.out.println("User.getSerialVersionUID() = " + userUp.getSerialVersionUID()); // ! 30 not 20

    }
}

class User implements Serializable {
    static int serialVersionUID;
    protected int id;

    public int getSerialVersionUID() {
        return serialVersionUID;
    }

    public void setSerialVersionUID(int serialVersionUID) {
        User.serialVersionUID = serialVersionUID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}

//user.getId() = 100
//User.getSerialVersionUID() = 20
//userUp.getId() = 100
//User.getSerialVersionUID() = 30 // ! 30 not 20

