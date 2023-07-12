# Definir un método que reciba el arreglo de números

def contador(array_num)
  # Dentro del método vamos a inicializar una variable que almacenará las repeticiones de los números que indiquemos.
  repeticiones = 0
  
  # recorrer la lista de números por cada elemento
  array_num.each do |cuenta|
    #  y en caso de que el número sea igual 10 las repeticiones se irán aumentando de 1 en 1.
    repeticiones += 1 if cuenta == 10
  end
  repeticiones
end

# Definir una variable con la asignación de un arreglo de números en la cual se
# repita 1 o más veces el mismo número
numeros = [1, 4, 5, 7, 9, 10, 15, 10, 20, 2, 10, 200, 300, 10, 50]


# Mostramos las repeticiones en función de la condición de que el elemento
# dentro de nuestra lista sea igual a 10. además pasaremos la lista de números como
# argumento para que nuestro método la reciba.

puts contador(numeros)



