<html>
	<head>
		<title>Calculo de IMC</title>
	</head>
	<body>
		<h2>Calculo de IMC</h2>
		<form>
        	peso <input type="number" name="peso"></br></br>
        	altura <input type="float" name="altura"></br></br>
       		<button> Calcular </button>
		</form>
		<%
		//Inicio do scriptlet
	   
		String pesoString = request.getParameter("peso");
		String alturaString = request.getParameter("altura");
		
		float peso = pesoString == null ? 0 : Float.parseFloat(pesoString);
		float altura = alturaString == null ? 0 : Float.parseFloat(alturaString);
		
	   
		float quadrado = altura * altura;
		float calculo = peso/quadrado;
	   
		if(calculo<18.5){%><h3>Você está magro com esse indice</h3><%}
		else if(calculo>=18.5 && calculo<25){%><h3>Você está normal com esse indice</h3><%}
		else if(calculo>=25 && calculo<30) {%><h3>Você está com sobre peso com esse indice</h3><%}
		else if(calculo>=30 && calculo<40) {%><h3>Você está com obesidade com esse indice</h3><%}
		else if (calculo>40) {%><h3>Você está com obesidade grave com esse indice</h3><%}
		
		//Fim do scriptlet
        %>
    </body>
</html>
