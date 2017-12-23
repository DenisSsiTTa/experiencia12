# Dado el array:
# 1. Eliminar el ultimo elemento.
# 2. Eliminar el primer elemento.
# 3. Eliminar el elemento que se encuentra en la posicion media,
#    si el arreglo tiene un numero par de elementos entonces remover
#    el que se encuentre en la mitad izquierda, ejemplo:
#    en el arreglo [1,2,3,4] se removeria el elemento 2.
# 4. Borrar el ultimo elemento mientras ese numero sea distinto a 1.
# 5. Utilizando un arreglo vacio auxiliar y operaciones de push y pop:
#    invertir el orden de los elementos en un arreglo.

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# puts a.methods

# Listar un arreglo
def listar_arreglo(arreglo)
  cadena = '| '
  # puts 'el indice: #{index} y el valor: #{value}'
  arreglo.each { |value| cadena += " #{value} | " }
  puts cadena
end

# Eliminar elemento de un arreglo
def eliminar_elem_arr(arreglo, index)
  arreglo[index] = nil
  arreglo.delete(nil)
  arreglo
end

# Eliminar ultimo elemento de un arreglo
def eliminar_ult_elem_arr(arreglo)
  arreglo.pop
  arreglo
end

# Eliminar primer elemento de un arreglo
def eliminar_pri_elem_arr(arreglo)
  arreglo[0] = nil
  arreglo.delete(nil)
  arreglo
end

# Eliminar el elemento que se encuentra en la posicion media
def eliminar_med_elem_arr(arreglo)
  index = arreglo.length / 2
  index -= 1 if arreglo.length.even?
  eliminar_elem_arr(arreglo, index)
  arreglo
end

# Borrar el ultimo elemento mientras ese numero sea distinto a 1.
def eliminar_ult_dist_elem_arr(arreglo)
  eliminar_ult_elem_arr(arreglo) if arreglo[(arreglo.length - 1)] != 1
  arreglo
end

# Invertir un arreglo
def invertir_arreglo(arreglo)
  aux = []
  arreglo.length.times { aux.push(arreglo.pop) }
  aux
end

# Ejercicios

puts '0. Arreglo original.'
listar_arreglo(a)

puts '1. Eliminar el último elemento.'
a = eliminar_ult_elem_arr(a)
listar_arreglo(a)

puts '2. Eliminar el primer elemento.'
a = eliminar_pri_elem_arr(a)
listar_arreglo(a)

puts '3. Eliminar el elemento que se encuentra en la posición media,'
# si el arreglo tiene un número par de elementos entonces remover
# el que se encuentre en la mitad izquierda, ejemplo:
# en el arreglo [1,2,3,4] se removería el elemento 2.
a = eliminar_med_elem_arr(a)
listar_arreglo(a)

puts '4. Borrar el último elemento mientras ese número sea distinto a 1.'
a = eliminar_ult_dist_elem_arr(a)
listar_arreglo(a)

puts '5. Utilizando un arreglo vacío auxiliar y operaciones de push y pop:'
#    invertir el orden de los elementos en un arreglo.
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
listar_arreglo(a)
b = invertir_arreglo(a)
listar_arreglo(b)
