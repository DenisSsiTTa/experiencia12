# Dado los arrays, obtener:
# 1. La concatenacion de a y b. (hint: Los elementos que se repiten en a y b pueden aparecer dos veces en el resultado).
# 2. La union de a y b. (hint: Los elementos que se repiten en a y b NO deben aparecer repetidos en el resultado).
# 3. La interseccion de a y b. (hint: El resultado debe estar compuesto por los elementos que se repiten en a y b).
# 4. Intercalar los elementos: [[1, "lunes"], [2, "martes"], [3, "miércoles"], [9, "jueves"], [12, "viernes"], [31, "sábado"], ["domingo", "domingo"]]

a = [1, 2, 3, 9, 12, 31, 'domingo']
b = %w[lunes martes miercoles jueves viernes sabado domingo]

puts " 1. La concatenación de a y b. (hint: Los elementos que se repiten en a y b pueden aparecer dos veces en el resultado)."
i = 0
c = []
while i < a.length
  c.push(a[i].to_s + b[i].to_s)
  i += 1
end
print c
puts "\n ******************************************************"
puts " 2. La unión de a y b. (hint: Los elementos que se repiten en a y b NO deben aparecer repetidos en el resultado)."
i = 0
c = []
d = []
while i < a.length
  d[i] = [a[i].to_s , b[i].to_s]
  c.push(d[i]) if a[i].to_s != b[i].to_s
  i += 1
end
print c
puts "\n ******************************************************"
puts " 3. La intersección de a y b. (hint: El resultado debe estar compuesto por los elementos que se repiten en a y b)."
i = 0
while i < a.length
  print a[i].to_s if a[i].to_s == b[i].to_s
  i += 1
end

puts "\n ******************************************************"
puts " 4. Intercalar los elementos"
i = 0
c = []
d = []
while i < a.length
  if i.even?
    d[i] = [a[i].to_s, b[i].to_s]
  else
    d[i] = [b[i].to_s, a[i].to_s]
  end
  c.push(d[i])
  i += 1
end
print d
