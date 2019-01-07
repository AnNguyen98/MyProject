package modifierSample;

public class Child1 extends Parents{
	void doSomething() {
		this.noModifierVar = 10;
		this.protectedVar = 11 ; 
		this.publicVar = 12 ; 
		this.noModifierMethod();
		this.protectedMethod();
		this.publicMethod();
	}
}
