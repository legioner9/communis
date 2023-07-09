public class CRVld {

    String hostName_CRVld;
    String login_CRVld;
    String password_CRVld;

    AnwCR chkCR_CRVld(SO so) {
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
