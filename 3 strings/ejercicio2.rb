# Construir un arreglo de los nombres de todos sus companneros y en base a el:
# 1. Imprimir todos los elementos que excedan mas de 5 caracteres.
# 2. Crear un arreglo nuevo con todos los elementos en minuscula.
# 3. Crear un metodo que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.

# Listar un arreglo
def listar_arreglo(arreglo)
  cadena = "| "
  arreglo.each_with_index do |value,index|
      #puts "el indice: #{index} y el valor: #{value}"
      cadena = cadena + " #{value} | "
  end
  puts cadena
end

def impimir_max_largo(arreglo, max)
  arreglo.each_with_index do |value,index|
      print " | " + value if value.length >= max
  end
  puts "\n"
end

def convertir_arr_minus(arreglo)
  aux = []
  arreglo.each_with_index do |value,index|
      aux.push(value.downcase)
  end
  return aux
end

def largo_elementos(arreglo)
  aux = []
  arreglo.each_with_index do |value,index|
      aux.push(value.length)
  end
  return aux
end

alumnos = []

alumnos.push('ALVARO TORRES MEDINA')
alumnos.push('ANGEL LEONARDO')
alumnos.push('CAMILO LOZANO')
alumnos.push('DENISSE VELASQUEZ SALAZAR')
alumnos.push('EDGARDO ANTONIO OCHOA')
alumnos.push('FEDERICO MARCELO LARA')
alumnos.push('FELIPE ANTONIO QUINTEROS')
alumnos.push('MARCELO ANDRES ARIAS GALLEGOS')
alumnos.push('PATRICIO IBARRA')
alumnos.push('PEDRO ZEGERS')
alumnos.push('SANDRA SALGADO SAEZ')
alumnos.push('SEBASTIAN FUENZALIDA')

puts '1. Imprimir todos los elementos que excedan más de 5 caracteres.'
impimir_max_largo(alumnos, 25)

puts '2. Crear un arreglo nuevo con todos los elementos en minúscula.'
arreglo = convertir_arr_minus(alumnos)
listar_arreglo(arreglo)

puts '3. Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.'
arreglo = largo_elementos(alumnos)
listar_arreglo(arreglo)
