<html>
	<head>
		<title>Calculo de IMC</title>
	</head>
	<body>
		<h2>Calculo de IMC</h2>
		<form>
        	peso <input type="number" name="peso">
        	altura <input type="number" name="altura">
       		<button> Calcular </button>
		</form>
		<%
		//Inicio do scriptlet
	   
		String pesoString = request.getParameter("peso");
		String alturaString = request.getParameter("altura");
		
		int peso = pesoString == null ? 0 : Integer.parseInt(pesoString);
		int altura = alturaString == null ? 0 : Integer.parseInt(alturaString);
		
	   
		int quadrado = altura * altura;
		int calculo = peso/quadrado;
	   
		if(calculo<18.5){%><h3>Voc� est� magro com esse indice</h3><%}
		else if(calculo>=18.5 && calculo<25){%><h3>Voc� est� normal com esse indice</h3><%}
		else if(calculo>=25 && calculo<30) {%><h3>Voc� est� com sobre peso com esse indice</h3><%}
		else if(calculo>=30 && calculo<40) {%><h3>Voc� est� com obesidade com esse indice</h3><%}
		else if (calculo>40) {%><h3>Voc� est� com obesidade grave com esse indice</h3><%}
		
		//Fim do scriptlet
        %>
    </body>
</html>
