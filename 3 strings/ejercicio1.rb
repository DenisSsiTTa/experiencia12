# Dado el siguiente string y caracter, crear un metodo que reciba como parametro el string
# y el caracter. Luego debe buscar si existe ese caracter dentro del string.
# hint: El metodo .include? de un string busca si un caracter
# o string dado esta contenido en este.

def existe_caracter(cadena, caracter)
  cadena.include?(caracter)
end

cadena = 'Hola Mundo!'
caracter = 'o'

puts existe_caracter(cadena, caracter)
