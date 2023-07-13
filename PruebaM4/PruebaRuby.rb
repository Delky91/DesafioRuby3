# Refactorizado del codigo entregado

# Creo la clase padre llamada person
class Person
  # uso attr_accesor asi le damos ademas la funcionalidad de los getter y setter
  attr_accessor :first_name, :last_name, :age

  # Defino nuestro constructor
  def initialize(first, last, age)
    # Creo las variables de entorno con @
    @first_name = first
    @last_name = last
    @age = age
  end

  # Mantengo la función cumpleños aunque no se usa en caso de futura implemantación
  def birthday
    @age += 1
  end
end

# Creo la subclase Student que hereda de Person
class Student < Person
  # Creo el metodo introduce, que utiliza las variables de entorno heredadas
  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end

  # Creo el metodo talk
  def talk
    puts 'Aquí es la clase de programación con Ruby?'
  end
end

# Creo la subclase Teacher que hereda de Person
class Teacher < Person
  
  # Defino introduce para esta subclase también
  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end

  # defino talk para esta subclase
  def talk
    puts 'Bienvenidos a la clase de programación con Ruby!'
  end
end

#creo la subclase Parent que hereda de Person
class Parent < Person
  # defino introduce y talk como en los dos casos anteriores
  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end

  def talk
    puts 'Aquí es la reunión de apoderados?'
  end
end

# Creo un nuevo estudiante y hago uso del metodo introduce y talk
student = Student.new('Elvis', 'Tek', 30)
puts student.introduce
puts student.talk

# Creo un nuevo profesor y hago uso del metodo introduce y talk
teacher = Teacher.new('Elsa', 'Pato', 45)
puts teacher.introduce
puts teacher.talk

# Creo un nuevo Padre y hago uso del metodo introduce y talk
parent = Parent.new('Alan', 'Brito', 55)
puts parent.introduce
puts parent.talk
