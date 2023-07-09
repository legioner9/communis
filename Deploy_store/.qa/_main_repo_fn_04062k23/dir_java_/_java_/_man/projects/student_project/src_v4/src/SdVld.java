public class SdVld {
    String site_SdVld;

    /**
     *
     * @param so
     * @return
     */
    AnwSd chkSd_SdVld(SO so) {
        System.out.println("chkSd_SdVld is run: " +'\n' + ANSI.ANSI_GREEN +
                "   site " +  site_SdVld +  ANSI.ANSI_RESET);
        AnwSd anwSd = new AnwSd();
        anwSd.enabled = false;
        return anwSd;
    }
}
