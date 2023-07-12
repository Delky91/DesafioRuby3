# Define una lista inicial de ingredientes para la pizza
ingredientes_pizza = ["queso", "tomate", "pepperoni"]

# Función para agregar ingredientes a la lista
def agregar_ingrediente(lista, ingrediente)
  if lista.include?(ingrediente)
    puts "El ingrediente '#{ingrediente}' ya existe en la lista."
  else
    lista.push(ingrediente)
    puts "Se agregó el ingrediente '#{ingrediente}' a la lista."
  end
end

# Función para eliminar ingredientes de la lista
def eliminar_ingrediente(lista, ingrediente)
  if lista.include?(ingrediente)
    lista.delete(ingrediente)
    puts "Se eliminó el ingrediente '#{ingrediente}' de la lista."
  else
    puts "El ingrediente '#{ingrediente}' no existe en la lista."
  end
end

# Mostrar la lista de ingredientes inicial
puts "Ingredientes de la pizza:"
puts ingredientes_pizza.join(", ")

# Agregar nuevos ingredientes ingresados por el usuario
puts "Ingrese un nuevo ingrediente para agregar a la lista:"
nuevo_ingrediente = gets.chomp.downcase
agregar_ingrediente(ingredientes_pizza, nuevo_ingrediente)

# Eliminar ingredientes ingresados por el usuario
puts "Ingrese un ingrediente para eliminar de la lista:"
ingrediente_eliminar = gets.chomp.downcase
eliminar_ingrediente(ingredientes_pizza, ingrediente_eliminar)

# Mostrar la lista de ingredientes actualizada
puts "Ingredientes de la pizza:"
puts ingredientes_pizza.join(", ")