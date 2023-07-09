package st.javaedu.so.domain.gh;

import st.javaedu.so.domain.Ps;

import java.time.LocalDate;


// gh === group Human

// Cd === Child

// ctN === certificateNumber
// ctDt === certificateIssueDate
// ctDp === certificateIssueDepartment

public class Cd extends Ps {
    private String ctN_Cd;
    private LocalDate ctDt_Cd;
    private String ctDp_Cd;

    public String getCtN_Cd() {
        return ctN_Cd;
    }

    public void setCtN_Cd(String ctN_Cd) {
        this.ctN_Cd = ctN_Cd;
    }

    public LocalDate getCtDt_Cd() {
        return ctDt_Cd;
    }

    public void setCtDt_Cd(LocalDate ctDt_Cd) {
        this.ctDt_Cd = ctDt_Cd;
    }

    public String getCtDp_Cd() {
        return ctDp_Cd;
    }

    public void setCtDp_Cd(String ctDp_Cd) {
        this.ctDp_Cd = ctDp_Cd;
    }
}
