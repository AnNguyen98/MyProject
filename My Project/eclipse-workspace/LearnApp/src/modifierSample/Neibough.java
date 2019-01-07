package modifierSample;

public class Neibough {
	void doSomething() {
		Parents parents = new Parents();
		parents.noModifierVar = 1;
		parents.publicVar = 2 ;
		parents.protectedVar =3 ;
		parents.noModifierMethod();
		parents.protectedMethod();
		parents.publicMethod();
	}
}
