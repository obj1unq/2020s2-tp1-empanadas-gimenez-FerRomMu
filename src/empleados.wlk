//Escribir aqui los objetos

//EMPLEADOS

object galvan {
	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	
	method sueldo(nuevoSueldo){
		sueldo = nuevoSueldo
	}
	method cobrar(monto){
		dinero += 0.max(monto-deuda)
		deuda = 0.max(deuda-monto)
	}
	method gastar(monto){
		if (monto > dinero) {deuda += (monto-dinero)}
		dinero = 0.max(dinero-monto)
	}
	
	method sueldo(){return sueldo}
	method dinero(){return dinero}
	method deuda(){return deuda}
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