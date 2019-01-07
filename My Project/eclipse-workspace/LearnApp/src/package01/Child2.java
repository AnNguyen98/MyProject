package package01;

import modifierSample.Parents;

public class Child2 extends Parents {
	void doSomething() {
		this.protectedVar =1;
		this.protectedMethod();
		
		this.publicVar =2 ;
		this.publicMethod();
	}
}
