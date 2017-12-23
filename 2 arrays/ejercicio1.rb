# Dado el array:
# 1. Mostrar en pantalla el primer elemento.
# 2. Mostrar en pantalla el ultimo elemento.
# 3. Mostrar en pantalla todos los elementos.
# 4. Mostrar en pantalla todos los elementos junto con un indice.
# 5. Mostrar en pantalla todos los elementos que se encuentren en una posicion par.

def linea(indice, valor)
  puts "el indice: #{indice} y el valor: #{valor}"
end

arreglo = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 9]

puts '1. Mostrar en pantalla el primer elemento.'
puts arreglo.first

puts '2. Mostrar en pantalla el último elemento.'
puts arreglo.last

puts '# 3. Mostrar en pantalla todos los elementos.'
puts arreglo

puts '4. Mostrar en pantalla todos los elementos junto con un índice.'
arreglo.each_with_index { |value, i| linea(i, value) }

puts ' 5. Mostrar en pantalla todos los elementos que se encuentren en una posición par.'
arreglo.each_with_index { |value, i| linea(i, value) if i.even? }
