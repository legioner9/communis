package st.javaedu.so.vld;

import lj_1.ANSI;
import st.javaedu.so.domain.anw.AnwCR;
import st.javaedu.so.domain.SO;

public class CRVld {

    public String hostName_CRVld;
    public String login_CRVld;
    public String password_CRVld;

    public AnwCR chkCR_CRVld(SO so) {
        System.out.println("chkCR_CRVld is run at:" + '\n' + ANSI.ANSI_GREEN +
                "   hostName: " + hostName_CRVld + '\n' +
                "   login: " + login_CRVld + '\n' +
                "   password: " + password_CRVld + ANSI.ANSI_RESET
        );
        AnwCR anwCR = new AnwCR();
        anwCR.enabled = false;
        return anwCR;
    }
}
