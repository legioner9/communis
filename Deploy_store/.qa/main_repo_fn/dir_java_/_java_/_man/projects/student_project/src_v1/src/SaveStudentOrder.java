import org.jetbrains.annotations.NotNull;

public class SaveStudentOrder {
    public static void main(String[] args) {
        System.out.println("SaveStudentOrder is run");

        StudentOrder so = new StudentOrder();
        so.hFirstName = "hF";
        so.hLastName = "hL";
        so.wFirstName = "wF";
        so.wLastName = "wL";

        long answer = saveStudentOrder(so);
        System.out.println("answer = " + answer);
    }

    static void startAll() {
//        saveStudentOrder();
        scheduleStudentOrder();
        financeStudentOrder();
    }


    static long saveStudentOrder(@NotNull StudentOrder studentOrder) {
        long answer = 199;
        System.out.println('\n' +
                "hFirstName = " + studentOrder.hFirstName + '\n' +
                "hLastName = " + studentOrder.hLastName + '\n' +
                "wFirstName = " + studentOrder.wFirstName + '\n' +
                "wLastName = " + studentOrder.wLastName + '\n'
        );
        return answer;
    }

    static void scheduleStudentOrder() {
        System.out.println("scheduleStudentOrder is run");
    }

    static void financeStudentOrder() {
        System.out.println("financeStudentOrder is run");
    }
}
