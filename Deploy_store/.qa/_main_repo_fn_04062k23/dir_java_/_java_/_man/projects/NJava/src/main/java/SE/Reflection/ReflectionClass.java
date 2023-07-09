package SE.Reflection;

import java.lang.reflect.*;

public class ReflectionClass {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, InvocationTargetException {
        SomeClass someClass = new SomeClass(3);
        Class clazz = someClass.getClass();
        System.out.println("clazz.getName(): " + clazz.getName() + " clazz.getSimpleName(): " + clazz.getSimpleName());

        Constructor[] constructors = clazz.getConstructors();
        for (Constructor constructor : constructors) {
            System.out.println("constructor.getName(): " + constructor.getName());
            Parameter[] parameters = constructor.getParameters();
            for (Parameter parameter : parameters) {
                System.out.println("parameter.getName()" + parameter.getName());
                System.out.println("parameter.getType().getName()" + parameter.getType().getName());

            }

        }

        System.out.println("Methods:");
        Method[] methods = clazz.getMethods();
        for (Method method : methods) {
            System.out.println(method.getName());
            Parameter[] parameters = method.getParameters();
            for (Parameter parameter : parameters) {
                System.out.println("parameter.getName() + parameter.getType():: " + parameter.getName() + ": " + parameter.getType().getName());
            }
//            System.out.println(  Modifier.toString(method.getModifiers()));
//            method.setAccessible(true);
//            method.invoke(someClass,"111");

            System.out.println("Fields:");
            Field[] fields = clazz.getFields();
            for (Field field : fields) {
                System.out.println("field.getName() field.getType(): " + field.getName() + " " + field.getType().getName());
//                field.setAccessible(true);
                System.out.println("field.getInt(someClass): " + field.getInt(someClass));
                field.setInt(someClass,5);
                System.out.println("field.getInt(someClass): " + field.getInt(someClass));
            }
        }
    }
}

class SomeClass {
    private transient int s;

    SomeClass(Integer s) {
        this.s = s;
    }

    SomeClass() {
        System.out.println("constructor");
    }


    public synchronized String prnS(String s) {
        System.out.println(s);
        return s;
    }
}