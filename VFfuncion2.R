VFfuncion2=function(umbral, niter){
  
  # Creamos los objetos con los datos de entrada del problema:
  VA=1 # Valor actual de un peso
  i=1 # Tasa de interés anualizada de 100% (i=1)
  #paro=100000 # Número de iteraciones (cálculos) que deseamos realizar
  VF0=1 # El valor inicial del VF en la iteración
  #umbral=0.000000000001 # Asigno un valor de umbral
  DeltaVF=Inf # Asigno un valor inicial del incremento del VF en cad iteración
  n=0 # Valor inicial a n en la iteraciones
  
  # Operador while:
  while (DeltaVF>umbral && n<niter){
    # Actualizo el valor de n, seún el número de iteración realizado:
    n=n+1
    # Calculo el valor futuro:
    VF=VA*(1+(1/n))^n
    # Actualizamos el incremento del valor futuro de esta iteración con el de la iteración anterior (VF0):
    DeltaVF=VF-VF0
    # Actualizo el valor futuro de esta iteración como el valor futuro "de la iteración anterior" para futuras iteraciones:
    VF0=VF
  }
  
  # Creamos el objeto tipo lista de salida:
  respuesta=list(
    VF=VF,
    DeltaVF=DeltaVF,
    N=n  
  )
  # Se imprime el mensaje de salida:
  if(DeltaVF<umbral){
    print(
      paste0("Debido a que se llego a un VF ",VF, " por un umbral de " ,umbral, " y un DeltaVF ",DeltaVF, " y con ",n, " iteraciones (Se llego por umbral)")
    )}
  else{
    print(
      paste0("Debido a que se llego a un VF ",VF, " por iteraciones= " ,n, " dadas por niter= ",niter, " y con un valoR de DeltaVF ",DeltaVF, "' Se llego por las iteraciones ´")
    )}
  # Se regresa el objeto de salida al environment para que se encuentre disponible ahí:
  return(respuesta)
}
