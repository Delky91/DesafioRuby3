# Se pide crear un programa que filtre todos los precios menores a 1000 de un arreglo, que es
# lo mismo que seleccionar todos los elementos mayores o iguales a mil.

# El arreglo base para esta actividad es el siguiente:
precios = [100, 200, 1000, 5000, 10000, 10, 5000]
precio_filtrado = []

# for precio in precios
#   precio_filtrado.push(precio) if precio >= 1000
# end

precios.each do |precio|
  precio_filtrado.push(precio) if precio >= 1000
end

puts precio_filtrado.inspect

