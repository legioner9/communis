package jl_0.Utils;

import java.io.File;

public class IsItFs {
    public void isItFileDirExist(File file, String filename) {

        if (file.isFile()) {
            System.out.println("File " + filename + " is a file");
        } else if (file.isDirectory()) {
            System.out.println("File " + filename + " is a directory");
        } else if (file.exists()) {
            System.out.println("File " + filename + " exists");
        } else {
            System.out.println("File " + filename + " not exists");
        }
    }
}
