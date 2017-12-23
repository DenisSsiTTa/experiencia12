# Crear un metodo que reciba como parametro dos numeros enteros positivos
# e imprima los numeros pares que existen entre esos dos numeros.

def imprime_pares(num1, num2)
  while num1 <= num2 && num1 > 0 && num2 > 0
    puts num1 if num1 != 0 && num1.even?
    num1 += 1
  end
end

imprime_pares(10, 17)
