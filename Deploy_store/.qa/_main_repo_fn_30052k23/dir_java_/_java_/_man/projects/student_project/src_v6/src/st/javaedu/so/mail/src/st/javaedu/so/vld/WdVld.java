package st.javaedu.so.vld;

import lj_1.ANSI;
import st.javaedu.so.domain.anw.AnwWd;
import st.javaedu.so.domain.SO;

public class WdVld {
    public String phoneNumber_WdVld;
    public AnwWd chkWd_WdVld(SO so) {
        System.out.println("chkWd_WdVld is run: " +'\n' + ANSI.ANSI_GREEN +
                "   phoneNumber ="  + phoneNumber_WdVld + ANSI.ANSI_RESET);
        AnwWd anwWd = new AnwWd();
        anwWd.enabled  = false;
        return anwWd;
    }
}
