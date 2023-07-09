package SE.KeyStatic;

public class Static_extra_examp_empty {
    {
        System.out.println("static Static_extra_examp_empty static_extra_examp = new Static_extra_examp_empty();");
    }
    static Static_extra_examp_empty static_extra_examp = new Static_extra_examp_empty();

    static {
        System.out.println("static initializer ");
    }

    static int n = 3;
    static int k = returnIntStatic();

    static int i = 4;

    static int returnIntStatic() {
        System.out.println("static int returnInt run:" + '\n' +
                "   static int n = " + n + '\n' +
                "   static int i = " + i + '\n' +
                "   static int k = " + k + '\n');
        return 1;
    }

    Static_extra_examp_empty(){
        System.out.println("constructor");
    }

    public static void main(String[] args) {
//        System.out.println("new Static_extra_examp_empty();");
//        returnIntStatic();
//        new Static_extra_examp_empty();
//        returnIntStatic();
    }
}

//static Static_extra_examp_empty static_extra_examp = new Static_extra_examp_empty();
//constructor
//static initializer
//static int returnInt run:
//   static int n = 3
//   static int i = 0
//   static int k = 0
