package SE.File;

import jl_0.CLI.ANSI_jl_0;
import jl_0.Utils_jl_0;

import java.io.*;

public class FileToBuffer {
    public static void main(String[] args) throws IOException {
        Utils_jl_0 utilsJl_0 = new Utils_jl_0();

        String filename = args[0];

        File file = new File(filename);
        utilsJl_0.isIt(file, filename);
        file.createNewFile();
        utilsJl_0.isIt(file, filename);

        FileWriter fileWriter = new FileWriter(file);

        BufferedWriter buffered = new BufferedWriter(fileWriter);
        buffered.write("str3");
        buffered.newLine();
        buffered.write("str4");
        buffered.flush();
        buffered.close();

        FileReader fileReader = new FileReader(filename);

        BufferedReader bufferedReader = new BufferedReader(fileReader);

        System.out.println(ANSI_jl_0.ANSI_BLUE + "start of file --------------" + ANSI_jl_0.ANSI_RESET);
        while(bufferedReader.ready())
            System.out.println(bufferedReader.readLine());
        System.out.println(ANSI_jl_0.ANSI_BLUE + "end of file --------------" + ANSI_jl_0.ANSI_RESET);


    }
}
