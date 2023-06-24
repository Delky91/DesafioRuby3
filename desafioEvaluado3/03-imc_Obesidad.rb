# Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de
# ejercicios, agregar en el cálculo de Obesidad los elementos faltantes dado que la
# obesidad se subdivide en 3 niveles. Deberás agregar a la lógica condicional los
# cálculos para esos tres niveles.

# metodo para realizar el calculo de imc
def calcular_imc(peso, altura)
  imc = peso / (altura**2)
  imc.round(2)
end

# metodo para interpretar el resultado del imc
def interpretar_imc(imc)
  if imc < 18.5
    'Bajo peso'
  elsif imc < 25
    'Peso normal'
  elsif imc < 30
    'Sobrepeso'
  # ○ Obesidad grado I: 30 - 34.9 - Moderado
  elsif imc >= 30 && imc < 35
    'Obesidad grado 1 o moderado'
  # ○ Obesidad grado II: 35 - 39.9 - Severo
  elsif imc >= 35 && imc < 40
    'Obesidad grado 2 o severo'
  # ○ Obesidad grado III: Más de 40 - Muy severo
  elsif imc > 40
    'Obesidad grado 3 o Muy severo'
  # respuesta en caso de un error o valores criticos
  else
    puts 'compruebe los valores entregados'
    puts 'tu imc peligrosamente alto, por favor ve a tu medico'
  end
end

# metodo creado para solicitar el peso y estatura
def solicitar_dato(mensaje)
  print mensaje
  gets.chomp.to_f
end

# inicio del programa y con lo que sera recibido el usuario
puts 'Cálculo del Índice de Masa Corporal (IMC)'
puts '-----------------------------------------'

# variables que llaman al metodo solicitar_dato que seran pasados como parametros
peso = solicitar_dato('Ingrese su peso en kilogramos: ')
altura = solicitar_dato('Ingrese su altura en metros: ')

# hacemos calculo de imc con los datos entregados
imc = calcular_imc(peso, altura)

# interpretamos el resultado de imc
categoria = interpretar_imc(imc)

# comprobación de que imc sea un numero
if imc.nan?
  puts 'por favor ingrese un número y recuerda poner tu altura en metro por ejemplo: 1.7'
else
  puts "Su IMC es: #{imc}"
  puts "Categoría: #{categoria}"
end
