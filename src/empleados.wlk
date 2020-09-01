//Escribir aqui los objetos

//EMPLEADOS

object galvan {
	var sueldo = 15000
	
	method sueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}
	method cobrar(monto){}
	
	method sueldo(){return sueldo}
}

object baigorria {
	var sueldo = 0
	var totalCobrado = 0
	
	method vender(empanadasVendidas){
		sueldo += (empanadasVendidas*15)
	}
	method cobrar(monto){totalCobrado += monto; sueldo = 0}
	
	method sueldo(){return sueldo}
	method totalCobrado(){return totalCobrado}
}

//DUEÑO

object gimenez {
	var fondo = 300000
	
	method pagarSueldo(empleado){
		fondo -= empleado.sueldo()
		empleado.cobrar(empleado.sueldo())
	}
	
	method fondo(){return fondo}
}