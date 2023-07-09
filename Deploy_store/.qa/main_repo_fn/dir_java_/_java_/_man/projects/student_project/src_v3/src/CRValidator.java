public class CRValidator {

    String hostName;
    String login;
    String password;

    AnwCR chkCR(SO so) {
        System.out.println("chkCR is run at:" + '\n' +
                " hostName: " + hostName + '\n' +
                " login: " + login + '\n' +
                " password: " + password + '\n'
        );
        AnwCR anwCR = new AnwCR();
        anwCR.enabled = false;
        return anwCR;
    }
}
