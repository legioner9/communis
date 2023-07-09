import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

public class SudentOrderValidator {
    public static void main(String[] args) {
        checkAll();
    }

    static void checkAll() {

        StudentOrder so = readStudentOrder();

        AnsverCityRegister fromCheckCityRegister = checkCityRegister(so);
        AnswerWedding fromCheckWedding = checkWedding(so);
        AnswerChildren fromCheckChildren = checkChildren(so);
        AnswerStudent fromCheckStudent = checkStudent(so);


        sendMailStudentOrder(so);
    }

    static void sendMailStudentOrder(StudentOrder so) {

    }

    @Contract(value = " -> new", pure = true)
    static @NotNull StudentOrder readStudentOrder() {
        return new StudentOrder();
    }

    @Contract("_ -> new")
    static @NotNull AnsverCityRegister checkCityRegister(StudentOrder so) {
        System.out.println("checkCityRegister is run");
        return new AnsverCityRegister();
    }

    @Contract("_ -> new")
    static @NotNull AnswerWedding checkWedding(StudentOrder so) {
        System.out.println("checkWedding is run");
        return new AnswerWedding();
    }

    @Contract("_ -> new")
    static @NotNull AnswerChildren checkChildren(StudentOrder so) {
        System.out.println("checkChildren is run");
        return new AnswerChildren();
    }

    @Contract("_ -> new")
    static @NotNull AnswerStudent checkStudent(StudentOrder so) {
        System.out.println("checkStudent is run");
        return new AnswerStudent();
    }
}
