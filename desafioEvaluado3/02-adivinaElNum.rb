# Requerimiento 2, te solicitan un programa que simule el juego de “Adivina el
# número”. En este programa el computador va a elegir un número aleatorio y el
# usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para
# ganar es que el número del computador debe ser igual al del jugador.
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más
# amplio sea el rango más duradero será el juego

#creo que el metodo 
def juego(playerChoice, computerNum)
  puts "Tu número es #{playerChoice} y la computadora a elegido #{computerNum}"
  if computerNum == playerChoice
    puts 'Felicidades has ganado'
  else
    puts 'Lo sentimos, vuelve a intentarlo'
  end
end

# creo las variables para iniciar la logica su valor sera cambiado
numAleatorio = rand(1..10)
numPlayer = nil

# Implementa el ciclo más conveniente para lograr la lógica del ejercicio
while numPlayer != numAleatorio

  # player elige su numero
  print 'Ingresa tu número: '
  numPlayer = gets.chomp.to_i

  # en cada ciclo cambiamos el valor aleatorio
  # ○ Utiliza el método .rand para generar números aleatorios.
  numAleatorio = rand(1..10)

  # Hacemos llamada
  juego(numPlayer, numAleatorio)

end
