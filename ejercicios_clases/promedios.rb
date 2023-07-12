# Utilizando los métodos .sum() y .size() de Ruby, realiza un programa que sea capaz de
# calcular el promedio de un estudiante a partir de las notas que haya obtenido en sus
# desafíos. Dichas notas serán ingresadas antes de la ejecución del programa y deben ser
# almacenadas en una estructura de tipo arreglo.

# array para guardar las notas
notas = []

# pedimos que nos indiquen cuantas notas desea ingresar
puts '¿Cuántas notas deseas ingresar?'
notas_a_ingresar = gets.chomp.to_i

# iteramos segun la cantidad de notas a ingresar pidiendo ingresar la nota
notas_a_ingresar.times do
  puts 'Inserta la nota:'
  nota = gets.chomp.to_i
  notas.push(nota)
end

# calculamos el promedio
promedio = notas.sum / notas_a_ingresar

puts "tu promedio es #{promedio}"
