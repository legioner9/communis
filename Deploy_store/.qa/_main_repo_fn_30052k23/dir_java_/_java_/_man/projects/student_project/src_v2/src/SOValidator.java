// _StudentOrder === SO
// _check === chk
// _answer === anw
// _CityRegister === CR
// _Wedding === Wd
// _Children === Cd
// _Student === Sd

public class SOValidator {
    public static void main(String[] args) {
        chkAll();
    }

    static void chkAll() {

        while (true) {

            SO so = readSO();
            System.out.println("so: " + so);
            if (so == null) {
                break;
            }

            AnwCR fromChkCR = chkCR(so);
            if (!fromChkCR.enabled) {
                System.out.println("fromChkCR.enabled = " + fromChkCR.enabled);
                continue;
            }
            
            AnwWd fromChkWd = chkWd(so);
            AnwCd fromChkCd = chkCd(so);
            AnwSd fromChkSd = chkSd(so);

            sendMailSO(so);

            so = readSO();

        }
    }

    static void sendMailSO(SO so) {

    }

    static SO readSO() {
        return new SO();
//        return null;
    }

    /**
     * @param so
     * @return
     */
    static AnwCR chkCR(SO so) {
        System.out.println("chkCR is run");
        AnwCR anwCR = new AnwCR();
        anwCR.enabled = false;
        return anwCR;
    }

    static AnwWd chkWd(SO so) {
        System.out.println("chkWd is run");
        return new AnwWd();
    }

    static AnwCd chkCd(SO so) {
        System.out.println("chkCd is run");
        return new AnwCd();
    }

    static AnwSd chkSd(SO so) {
        System.out.println("chkSd is run");
        return new AnwSd();
    }
}
