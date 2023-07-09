package Entity.DynamicProxy;

import javax.swing.text.html.parser.Entity;
import java.awt.*;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.concurrent.Callable;

import static java.lang.reflect.Proxy.newProxyInstance;

public class DynamicProxyClass {

    public static void main(String[] args) throws Exception {

        InvocationHandler handler = new MyProxy(5);
        Class[] interfaces = new Class[]{Callable.class, Comparable.class};
        Object proxy = Proxy.newProxyInstance(null, interfaces, handler);

//        proxy.getClass(); // from Object
        System.out.println(((Comparable) proxy).compareTo(3)); ;
//        ((Callable) proxy).call();
    }

    static class MyProxy implements InvocationHandler {

        Object target;

        public MyProxy(Object target) {
            this.target = target;
        }

        @Override //! invoke() before original method invocation
        public Object invoke(Object proxy, Method method, Object[] args) throws Throwable { //! method === compareTo, args === 3

            System.out.println("Arrays.toString(args): " + Arrays.toString(args)); //
            System.out.println("target: " + target.toString()); //
            return method.invoke(target, args); //! method === compareTo => target.method(args) => 5.compareTo(3) === 1

        }
    }
}

//Arrays.toString(args): [3]
//target: 5
//1 //{5>3}
