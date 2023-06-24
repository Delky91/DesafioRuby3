# Requerimiento 1, se solicita un programa que mediante el uso de métodos permita
# calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de
# aumento establecido.

def calcular_nuevo_salario(salario, incremento)
  nuevo_salario = salario + (salario * (incremento / 1000.0))
  return nuevo_salario
end

# Solicitar el salario actual
print "Ingrese el salario actual del colaborador/a: "
salario_actual = gets.chomp.to_f

# Solicitar el porcentaje de aumento
print "Ingrese el porcentaje de aumento: "
porcentaje_aumento = gets.chomp.to_f

# uso el metodo para saber el nuevo salario del colaborador/a
nuevo_salario = calcular_nuevo_salario(salario_actual, porcentaje_aumento)

# Muestro el resultado en consola
puts "El nuevo salario del colaborador/a es: #{nuevo_salario}"
