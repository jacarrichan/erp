package com.erp.test;

public class A
{
	static int i = 100;
	void func() {
		System.out.println("in A.func(), and i = " + i);
	}
}
class B extends A {
	static int i = 200;
	void func() {
		System.out.println("in B.func(), and i = " + i);
	}

}
