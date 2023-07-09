package less1.Human_static;

import java.util.Date;

public class Human {
    protected static int weight = 60;
    private Date birthdate;

    public void sport_Human() {
        weight += 1 ;
    }

    public int getWeight() {
        return weight;
    }

//    public void setWeight(int weight) {
//        weight = weight;
//    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        birthdate = birthdate;
    }
}
