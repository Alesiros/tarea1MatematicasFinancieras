switchPersonal=function(Colorfav){
switch(
  Colorfav,
  "Morado"={respuesta="Eres creativo"},
  "Rosa"={respuesta="Eres dulce"},
  "Blanco"={respuesta="Eres pacifico"},
  "Amarillo"={respuesta="Que sereno eres"},
  "Azul"={respuesta="Trata de buscar tranquilidad"},
  "Rojo"={respuesta="Tienes una personalidad fuerte"},
  "Naranja"={respuesta="Eres muy extrovertido"},
  "Verde"={respuesta="uy, eres una persona indecisa"},
  "Negro"={respuesta="Eres muy controlador"},
  {respuesta="No sé que color es ese :("}
)
respuesta
}