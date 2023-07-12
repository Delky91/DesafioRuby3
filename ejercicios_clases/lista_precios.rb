# 1. Paso 1: Crear el programa lista_precios.rb.
# 2. Paso 2: Crear la lista de precios con la estructura de tipo arreglo.
# 3. Paso 3: Iterar sobre el arreglo con el ciclo for

# precios = [120, 210, 309, 104, 192]

# con un for
# for precio in precios
#   puts precio
# end

# con un while
# i = 0

# while i < precios.count
#   puts precios[i]
#   i += 1

# end

# con each

# precios.each do |precio|
#   puts precio
# end

# precios = [120, 210, 309, 104, 192]
# nuevos_precios = []

# precios.each do |precio|
#   nuevos_precios.push(precio * 1.2)
# end

# puts nuevos_precios


# A continuación, crea una lista con tus canciones favoritas y utilizando
# los ciclos for o while recorre los elementos de dicha lista.

canciones = []

puts "¿Cuántas canciones deseas ingresar?"
cantidad = gets.chomp.to_i

cantidad.times do
  puts "Inserta el nombre de una canción:"
  cancion = gets.chomp
  canciones.push(cancion)
end


puts "tu playlist es:"
# con for
for cancion in canciones
  puts cancion
end

# con while
# i = 0

# while i < canciones.count
#   puts canciones[i]
#   i +=1
# end




