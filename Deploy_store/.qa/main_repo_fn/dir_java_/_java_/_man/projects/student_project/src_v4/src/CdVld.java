public class CdVld {
    String addressCd_CdVld;
    int room;

    AnwCd chkCd_CdVld(SO so) {
        System.out.println("chkCd_CdVld is run: "  + '\n' + ANSI.ANSI_GREEN +
                "   address: " + addressCd_CdVld + '\n' +
                "   room: " + room + ANSI.ANSI_RESET
        ) ;
        AnwCd anwCd = new AnwCd();
        anwCd.enabled = false;
        return anwCd;
    }
}
