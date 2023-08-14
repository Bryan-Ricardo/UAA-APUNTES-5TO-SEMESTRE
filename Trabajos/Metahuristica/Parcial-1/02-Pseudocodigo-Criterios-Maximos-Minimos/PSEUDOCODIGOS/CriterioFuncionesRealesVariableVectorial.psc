//1 Dar una funcion f que pertenesca a la clase C^2 en una 
//vecindad 
Funcion valorf <- f ( x , z )
	valorf <- (2*(x^2)) + (4*x*z)+ (5*(z^2))+ (2*x) -z
Fin Funcion

Funcion valorD1 <- D1 ( x , z )
	valorD1 <- (4*x) + (4*z) +2
Fin Funcion

Funcion valorD2 <- D2 ( x , z )
	valorD2 <- (4*x) + (10*z) -1
Fin Funcion


Algoritmo CriterioFuncionesRealesVariableVectorial
	
	//2
	x_0_1 <- -1
	x_0_2<-1/2
	valorD11 <- 4
	valorD12 <- 4
	valorD22 <- 10
	
	Si D1(x_0_1,x_0_2) == D2(x_0_1,x_0_2) & D1(x_0_1,x_0_2) ==0 Entonces
		//3
		Si valorD11*valorD22 - ((D12)^2)>0 Entonces
			Escribir "f tiene un valor extremo en (", x_0_1 , ",",x_0_2,")" 
			//3.1
			Si valorD11<0 Entonces
				
				Escribir "f tiene un valor máximo relativo en (", x_0_1 , ",",x_0_2,")" 
			SiNo
				//3.2
				Si valorD11>0 Entonces
					Escribir "f tiene un valor mínimo relativo en (", x_0_1 , ",",x_0_2,")" 
				SiNo
					
				Fin Si
			Fin Si
		SiNo
			//4
			Si valorD11*valorD22 - ((D12)^2)<0 Entonces
				Escribir "f tiene un punto silla en (", x_0_1 , ",",x_0_2,")" 
			SiNo
				Escribir "No es ningun punto en especial"
			Fin Si
		Fin Si
	SiNo
		Escribir "D1f(x_0)!= D2f(x_0) & D2f(x_0) !=0"
	Fin Si
	
Escribir "Fin del programa"
	
FinAlgoritmo