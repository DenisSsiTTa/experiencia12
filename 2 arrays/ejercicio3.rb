# Dado el array:
# 1. Crear un metodo para eliminar todos los números pares del arreglo.
# 2. Crear un metodo para obtener la suma de todos los elementos del arreglo Utilizando .each
# 3. Crear un metodo para obtener el promedio de un arreglo.
# 4. Crear un metodo que incrementa todos los elementos en una unidad y devuelva un arreglo nuevo.

# Listar un arreglo
def listar_arreglo(arreglo)
  cadena = '| '
  arreglo.each do |value|
    # puts "el indice: #{index} y el valor: #{value}"
    cadena += " #{value} | "
  end
  puts cadena
end

# Eliminar elemento de un arreglo
def eliminar_elem_arr(arreglo, index)
  arreglo[index] = nil
  arreglo.delete(nil)
  arreglo
end

# Eliminar todos los numeros pares del arreglo.
def eliminar_pares_arr(arreglo)
  aux = []
  arreglo.each do |value|
    aux.push(value) unless value.even?
  end
  aux
end

# obtener la suma de todos los elementos del arreglo
def suma_elem_arr(arreglo)
  suma = 0
  arreglo.each do |value|
    suma += value
  end
  suma
end

# obtener promedio de todos los elementos del arreglo
def promedio_elem_arr(arreglo)
  suma = 0.0
  arreglo.each do |value|
    suma += value
  end
  promedio = suma / arreglo.length
  promedio
end

# incrementa todos los elementos del arreglo.
def incrementa_ele_arr(arreglo)
  aux = []
  arreglo.each do |value|
    aux.push(value + 1)
  end
  aux
end

# Ejercicios

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

puts '0. Arreglo original.'
listar_arreglo(a)

puts '1. Crear un método para eliminar todos los números pares del arreglo.'
a = eliminar_pares_arr(a)
listar_arreglo(a)

puts '2. Crear un método para obtener la suma de todos los elementos del arreglo Utilizando .each'
puts suma_elem_arr(a)

puts '3. Crear un método para obtener el promedio de un arreglo.'
puts promedio_elem_arr(a)

puts '4. Crear un método que incrementa todos los elementos en una unidad y devuelva un arreglo nuevo.'
a = incrementa_ele_arr(a)
listar_arreglo(a)
