class Person
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end
    
    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
        puts "¿Aquí ies la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        puts "¿Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk
        puts "¡Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

Student.new('Juanito','Perez',36,'Student').talk
Student.new('Juanito','Perez',36,'Student').introduce
puts "\n"
Parent.new('Juanito','Perez',36,'Student').talk
Parent.new('Juanito','Perez',36,'Student').introduce
puts "\n"
Teacher.new('Juanito','Perez',36,'Student').talk
Teacher.new('Juanito','Perez',36,'Student').introduce
