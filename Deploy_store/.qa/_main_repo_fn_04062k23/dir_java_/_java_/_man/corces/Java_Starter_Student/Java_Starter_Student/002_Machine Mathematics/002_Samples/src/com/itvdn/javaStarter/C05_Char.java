package com.itvdn.javaStarter;

public class C05_Char {
    public static void main(String[] args) {
        char a = 'A';       // Символ
        char b = 0x0041;    // Значение в 16-ричном формате
        char c = '\u0065';  // Значение в формате unicode

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);

        int ff = 1 / 0;
        System.out.println(ff);
    }
}
