package SE.File;

import jl_0.CLI.ANSI_jl_0;
import jl_0.Utils_jl_0;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;


public class FileClass {
    public static void main(String[] args) throws IOException {
        Utils_jl_0 utilsJl_0 = new Utils_jl_0();

        String filename = args[0];

        File file = new File(filename);
        utilsJl_0.isIt(file, filename);
        file.createNewFile();
        utilsJl_0.isIt(file, filename);
        FileWriter fileWriter = new FileWriter(file);
        fileWriter.write("str1\nstr2\n");
        fileWriter.flush();
        fileWriter.close();

        FileReader fileReader = new FileReader(filename);
        char[] buffer = new char[100];
        fileReader.read(buffer);

        System.out.println(ANSI_jl_0.ANSI_BLUE + "start of file --------------" + ANSI_jl_0.ANSI_RESET);
        System.out.println(buffer);
        System.out.println(ANSI_jl_0.ANSI_BLUE + "end of file --------------" + ANSI_jl_0.ANSI_RESET);





    }
}
