package st.javaedu.so.vld;

import lj_1.ANSI;
import st.javaedu.so.domain.anw.AnwSd;
import st.javaedu.so.domain.SO;

public class SdVld {
    public String site_SdVld;

    /**
     *
     * @param so
     * @return
     */
    public AnwSd chkSd_SdVld(SO so) {
        System.out.println("chkSd_SdVld is run: " +'\n' + ANSI.ANSI_GREEN +
                "   site " +  site_SdVld +  ANSI.ANSI_RESET);
        AnwSd anwSd = new AnwSd();
        anwSd.enabled = false;
        return anwSd;
    }
}
