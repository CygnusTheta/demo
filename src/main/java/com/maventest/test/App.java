package com.maventest.test;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World from DOCKER!" );
        System.out.println(add(1,2));
    }


    public static int add(int a,int b) {
       return a+b; 
    }
    
}
