# language: es
Característica: Aceptar inscripción.
  Como Administrador
  Quiero Confirmar la inscripción de un colono a la colonia
  Para poder calcular los lugares que quedan y armar los grupos de colonos    

Antecedentes:
  Dado que estoy identificado como "Administrador"
  Y que existe el colono "Juan Pérez" con DNI "44123321"
  Y que existe el colono "Juan Jacinto Perez" con DNI "45123321"
  Y que existe el colono "Laura Villanueva" con DNI "42205204"
  Y estoy en la pantalla "Colonos"    

#Camino Feliz
Escenario:
  Dado que presiono el botón "Confirmar" en el renglón del colono "Juan Jacinto Perez"
  Entonces veo un mensaje "Ha sido CONFIRMADA la inscripción de "Juan Jacinto Perez"."
  Entonces el botón cambia a la palabra "aceptado"
  Y el estado del colono "Juan Jacinto Perez" cambia a "aceptado"