
// _StudentOrder === SO
// _check === chk
// _answer === anw
// _CityRegister === CR
// _Wedding === Wd
// _Children === Cd
// _Student === Sd

public class SaveSO {
    public static void main(String[] args) {
        System.out.println("SaveSO is run");

        SO so = new SO();
        so.hFirstName = "hF";
        so.hLastName = "hL";
        so.wFirstName = "wF";
        so.wLastName = "wL";

        long answer = saveSO(so);
        System.out.println("answer = " + answer);
    }

    static void startAll() {
//        saveSO();
        scheduleSO();
        financeSO();
    }


    static long saveSO( SO so) {
        long answer = 199;
        System.out.println('\n' +
                "hFirstName = " + so.hFirstName + '\n' +
                "hLastName = " + so.hLastName + '\n' +
                "wFirstName = " + so.wFirstName + '\n' +
                "wLastName = " + so.wLastName + '\n'
        );
        return answer;
    }

    static void scheduleSO() {
        System.out.println("scheduleSO is run");
    }

    static void financeSO() {
        System.out.println("financeSO is run");
    }
}
