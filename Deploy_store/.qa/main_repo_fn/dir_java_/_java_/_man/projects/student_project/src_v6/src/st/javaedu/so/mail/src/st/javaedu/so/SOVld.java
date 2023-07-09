package st.javaedu.so;

import lj_1.ANSI;
import st.javaedu.so.domain.*;
import st.javaedu.so.domain.anw.AnwCR;
import st.javaedu.so.domain.anw.AnwCd;
import st.javaedu.so.domain.anw.AnwSd;
import st.javaedu.so.domain.anw.AnwWd;
import st.javaedu.so.mail.SM;
import st.javaedu.so.vld.CRVld;
import st.javaedu.so.vld.CdVld;
import st.javaedu.so.vld.SdVld;
import st.javaedu.so.vld.WdVld;

// _StudentOrder === st.javaedu.so.domain.SO
// _check === chk
// _answer === anw
// _CityRegister === CR
// _Wedding === Wd
// _Children === Cd
// _Student === Sd
// _Validator === Vld
// _sendMail === sM


/**
 * link {@link SOVld#sM_SOVld(SO)}
 *
 * @see SO#gethFirstName_SO()
 * <img src="doc-files/books.jpg" alt="books" />
 */
public class SOVld {
    public static void main(String[] args) {
        System.out.println("main st.javaedu.so.SOVld is run");
        chkAll_SOVld();
    }


    /**
     *
     */
    static void chkAll_SOVld() {
        System.out.println("chkAll_SOVld is run");

        while (true) {

            SO so = readSO_SOVld();

            System.out.println(ANSI.ANSI_GREEN + "    so: " + so + ANSI.ANSI_RESET);
            if (so == null) {
                break;
            }

            AnwCR fromChkCR_SOVld = chkCR_SOVld(so);
            if (!fromChkCR_SOVld.enabled) {
                System.out.println("fromChkCR_SOVld.enabled = " + fromChkCR_SOVld.enabled);
//                continue;
            }

            AnwWd fromChkWd_SOVld = chkWd_SOVld(so);
            System.out.println("fromChkWd_SOVld.enabled = " + fromChkWd_SOVld.enabled);
            AnwCd fromChkCd_SOVld = chkCd_SOVld(so);
            System.out.println("fromChkCd_SOVld.enabled = " + fromChkCd_SOVld.enabled);
            AnwSd fromChkSd_SOVld = chkSd_SOVld(so);
            System.out.println("fromChkSd_SOVld.enabled = " + fromChkSd_SOVld.enabled);

            boolean fromSM_SOVld = sM_SOVld(so);
            System.out.println("fromSM_SOVld = " + fromSM_SOVld);
            System.out.println(" ");
        }
    }

    static boolean sM_SOVld(SO so) {
        System.out.println("sM_SOVld is run");
        return new SM().sM_SM(so);
    }

    static SO readSO_SOVld() {
        System.out.println("readSO_SOVld is run");
        return new SO();
//        return null;
    }

    /**
     * @param so
     * @return
     */
    static AnwCR chkCR_SOVld(SO so) {
        System.out.println("chkCR_SOVld is run");

        CRVld crv1 = new CRVld();
        crv1.hostName_CRVld = "localhost1";
        crv1.login_CRVld = "login1";
        crv1.password_CRVld = "password1";

        AnwCR fromChkCR1 = crv1.chkCR_CRVld(so);

        return fromChkCR1;
    }

    static AnwWd chkWd_SOVld(SO so) {
        System.out.println("chkWd_SOVld is run");

        WdVld wdv0 = new WdVld();
        wdv0.phoneNumber_WdVld = "1234567890";

        AnwWd anwWd = wdv0.chkWd_WdVld(so);

        return anwWd;
    }

    static AnwCd chkCd_SOVld(SO so) {
        System.out.println("chkCd_SOVld is run");

        CdVld cdv0 = new CdVld();
        cdv0.addressCd_CdVld = "Pokrovka St 23";
        cdv0.room = 3;
        AnwCd anwCd = cdv0.chkCd_CdVld(so);

        return anwCd;
    }

    static AnwSd chkSd_SOVld(SO so) {
        System.out.println("chkSd_SOVld is run");

        SdVld sdv = new SdVld();
        sdv.site_SdVld = "ya.ru";
        AnwSd anwSd = sdv.chkSd_SdVld(so);

        return anwSd;
    }
}
