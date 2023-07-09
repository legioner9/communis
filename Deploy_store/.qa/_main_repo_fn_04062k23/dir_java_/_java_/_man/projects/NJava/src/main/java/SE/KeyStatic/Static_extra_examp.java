package SE.KeyStatic;

public class Static_extra_examp {

    static Static_extra_examp static_extra_examp = new Static_extra_examp();
    static int n = 3;
    static int i = 4;

    static {
        System.out.println("static initializer ");
    }

    {
        System.out.println("static Static_extra_examp static_extra_examp = new Static_extra_examp();");
    }    static int k = returnIntStatic();

    Static_extra_examp() {
        System.out.println("constructor");
    }

    static int returnIntStatic() {
        System.out.println("static int returnInt run:" + '\n' +
                "   static int n = " + n + '\n' +
                "   static int i = " + i + '\n' +
                "   static int k = " + k + '\n');
        return 1;
    }

    public static void main(String[] args) {
        System.out.println("new Static_extra_examp_empty();");
        returnIntStatic();
        new Static_extra_examp_empty();
        returnIntStatic();
    }
}

//? compare with Static_extra_examp_empty

//static Static_extra_examp static_extra_examp = new Static_extra_examp();
//constructor
//!static initializer // only once
//static int returnInt run:
//   static int n = 3
//   static int i = 0
//   static int k = 0
//
//new Static_extra_examp_empty();
//static int returnInt run:
//   static int n = 3
//   static int i = 4
//   static int k = 1
//
//static Static_extra_examp_empty static_extra_examp = new Static_extra_examp_empty();
//constructor
//static initializer
//static int returnInt run:
//   static int n = 3
//   static int i = 0
//   static int k = 0
//
//static Static_extra_examp_empty static_extra_examp = new Static_extra_examp_empty();
//constructor
//static int returnInt run:
//   static int n = 3
//   static int i = 4
//   static int k = 1
