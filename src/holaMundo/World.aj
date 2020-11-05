package holaMundo;

public aspect World {
	pointcut greeting():execution(* Hello.sayHello(..));
	
	after() returning() : greeting() {
		System.out.println("World");
	}

}
