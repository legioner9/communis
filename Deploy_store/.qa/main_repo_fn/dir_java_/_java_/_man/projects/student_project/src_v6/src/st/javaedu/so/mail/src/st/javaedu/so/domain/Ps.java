package st.javaedu.so.domain;

import java.time.LocalDate;

// Ps === Person

// sN === surName
// gN === givenName
// pN === patronymic
// dtB === dateOfBirth
// un === university
// sI === studentID

public class Ps {

    private String sN_Ps;
    private String gN_Ps;
    private String pN_Ps;
    private LocalDate dtB_Ps;
    private Ar ar_Ps;

    public String getsN_Ps() {
        return sN_Ps;
    }

    public void setsN_Ps(String sN_Ps) {
        this.sN_Ps = sN_Ps;
    }

    public String getgN_Ps() {
        return gN_Ps;
    }

    public void setgN_Ps(String gN_Ps) {
        this.gN_Ps = gN_Ps;
    }

    public String getpN_Ps() {
        return pN_Ps;
    }

    public void setpN_Ps(String pN_Ps) {
        this.pN_Ps = pN_Ps;
    }

    public LocalDate getDtB_Ps() {
        return dtB_Ps;
    }

    public void setDtB_Ps(LocalDate dtB_Ps) {
        this.dtB_Ps = dtB_Ps;
    }

    public Ar getAr_Ps() {
        return ar_Ps;
    }

    public void setAr_Ps(Ar ar_Ps) {
        this.ar_Ps = ar_Ps;
    }
}
