//Escribir aqui los objetos

//EMPLEADOS

object galvan {
	var sueldo = 15000
	
	method sueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}
	
	method sueldo(){return sueldo}
}

object baigorria {
	var sueldo = 0
	
	method vender(empanadasVendidas){
		sueldo += (empanadasVendidas*15)
	}
	
	method sueldo(){return sueldo}
}

//DUEÑO

object Gimenez {}