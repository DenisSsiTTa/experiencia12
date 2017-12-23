# Un metodo puede llamar a otros metodos, modifica el siguiente codigo
# para que al llamar a un solo metodo se imprima:
# *****
# *****
# *****
# *****
# *****

def draw_line(size)
  '*' * size
end

def draw_lines(size)
  size.times do
    puts draw_line 5
  end
end

draw_lines 5
