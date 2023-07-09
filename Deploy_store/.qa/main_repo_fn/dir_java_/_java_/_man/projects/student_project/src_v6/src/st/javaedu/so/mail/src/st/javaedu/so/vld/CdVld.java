package st.javaedu.so.vld;

import lj_1.ANSI;
import st.javaedu.so.domain.anw.AnwCd;
import st.javaedu.so.domain.SO;

public class CdVld {
    public String addressCd_CdVld;
    public int room;

    public AnwCd chkCd_CdVld(SO so) {
        System.out.println("chkCd_CdVld is run: "  + '\n' + ANSI.ANSI_GREEN +
                "   address: " + addressCd_CdVld + '\n' +
                "   room: " + room + ANSI.ANSI_RESET
        ) ;
        AnwCd anwCd = new AnwCd();
        anwCd.enabled = false;
        return anwCd;
    }
}
