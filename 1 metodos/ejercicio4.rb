# Crear un metodo que muestre en pantalla un saludo, el metodo
# debe recibir un parametro, si ese parametro es el string "Hola" el
# metodo debe mostrar en pantalla "Hola Mundo".

def saludo(parametro)
  return unless parametro == 'hola'
  puts '*********************************************************************'
  puts '*********************************************************************'
  puts '*********************************************************************'
  puts '****************** H O L A     M U N D O ****************************'
  puts '*********************************************************************'
  puts '*********************************************************************'
  puts '*********************************************************************'
end

puts 'Ingrese mensaje: '
opcion = gets.chomp
saludo(opcion)
