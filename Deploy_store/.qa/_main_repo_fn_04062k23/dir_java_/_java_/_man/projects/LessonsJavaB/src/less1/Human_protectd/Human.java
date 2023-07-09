package less1.Human_protectd;

import java.util.Date;

public class Human {
    private int weight = 60;
    private Date birthdate;

    public void sport_Human() {
        weight += 1 ;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public Date getBirthdate() {
        return this.birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }
}
