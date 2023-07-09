public class WdVld {
    String phoneNumber_WdVld;
    AnwWd chkWd_WdVld(SO so) {
        System.out.println("chkWd_WdVld is run: " +'\n' + ANSI.ANSI_GREEN +
                "   phoneNumber ="  + phoneNumber_WdVld + ANSI.ANSI_RESET);
        AnwWd anwWd = new AnwWd();
        anwWd.enabled  = false;
        return anwWd;
    }
}
