package st.javaedu.so;

import st.javaedu.so.domain.SO;

// _StudentOrder === st.javaedu.so.domain.SO
// _check === chk
// _answer === anw
// _CityRegister === CR
// _Wedding === Wd
// _Children === Cd
// _Student === Sd

public class SaveSO {
    public static void main(String[] args) {
        System.out.println("st.javaedu.so.SaveSO is run");

        SO so = new SO();
        so.hFirstName_SO = "hF";
        so.hLastName_SO = "hL";
        so.wFirstName_SO = "wF";
        so.wLastName_SO = "wL";

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
                "   hFirstName = " + so.hFirstName_SO + '\n' +
                "   hLastName = " + so.hLastName_SO + '\n' +
                "   wFirstName = " + so.wFirstName_SO + '\n' +
                "   wLastName = " + so.wLastName_SO
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
