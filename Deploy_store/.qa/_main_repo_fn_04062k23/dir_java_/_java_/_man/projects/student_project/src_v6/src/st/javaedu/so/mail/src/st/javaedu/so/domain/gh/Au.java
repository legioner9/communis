package st.javaedu.so.domain.gh;

import st.javaedu.so.domain.Ps;

import java.time.LocalDate;

// gh === group Human

// Au === Adult

// passS === passportSerial
// passN === passportNumber
// passDt === passportIssueDate
// passDp === passportIssueDepartment
// un === university
// sI === studentID

public class Au extends Ps {
    private String passS_Au;
    private String passN_Au;
    private LocalDate passDt_Au;
    private String passDp_Au;
    private String un_Au;
    private String sI_Au;
    public String getPassS_Au() {
        return passS_Au;
    }

    public void setPassS_Au(String passS_Au) {
        this.passS_Au = passS_Au;
    }

    public String getPassN_Au() {
        return passN_Au;
    }

    public void setPassN_Au(String passN_Au) {
        this.passN_Au = passN_Au;
    }

    public LocalDate getPassDt_Au() {
        return passDt_Au;
    }

    public void setPassDt_Au(LocalDate passDt_Au) {
        this.passDt_Au = passDt_Au;
    }

    public String getPassDp_Au() {
        return passDp_Au;
    }

    public void setPassDp_Au(String passDp_Au) {
        this.passDp_Au = passDp_Au;
    }
}
