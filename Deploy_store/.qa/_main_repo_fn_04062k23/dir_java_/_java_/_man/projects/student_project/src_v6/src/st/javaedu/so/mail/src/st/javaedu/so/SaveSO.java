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
        so.sethFirstName_SO("hF");
        so.sethLastName_SO("hL") ;
        so.setwFirstName_SO("wF") ;
        so.setwLastName_SO("wL") ;

        long answer = saveSO_SaveSO(so);
        System.out.println("answer = " + answer);
    }

    static void startAll_SaveSO() {
//        saveSO_SaveSO();
        scheduleSO_SaveSO();
        financeSO_SaveSO();
    }


    static long saveSO_SaveSO( SO so) {
        long answer = 199;
        System.out.println('\n' +
                "   hFirstName = " + so.gethFirstName_SO() + '\n' +
                "   hLastName = " + so.gethLastName_SO() + '\n' +
                "   wFirstName = " + so.getwFirstName_SO() + '\n' +
                "   wLastName = " + so.getwLastName_SO()
        );
        return answer;
    }

    static void scheduleSO_SaveSO() {
        System.out.println("scheduleSO is run");
    }

    static void financeSO_SaveSO() {
        System.out.println("financeSO is run");
    }
}
