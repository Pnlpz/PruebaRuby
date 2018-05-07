# Se tiene un archivo con formato .csv que contiene nombres de alumnos con sus
# respectivas notas.
# El archivo tiene la siguiente estructura:
# David, 9, 2, 5, 1, 1
# Gonzalo, 10, 2, A, 8, 1
# Mai, 10, 10, 9, 9, A
# JP, 10, 10, 10, 10, 10
# Donde la A señala que el alumno estuvo ausente en la prueba.
# Crear un menú con 4 opciones:
# Se debe validar, en caso que se ingrese otra opción, que la opción
# escogida sea 1, 2, 3, o 4. Por ende, si se ingresa cualquier otra opción el
# programa debe mostrar que la opción es inválida, mostrar nuevamente
# el menú y la posibilidad de volver a ingresar una opción


notas = { 'David' => [9, 2, 5, 1, 1], 'Gonzalo' => [10, 2, 'A', 8, 1],
          'Mai' => [10, 10, 9, 9, 'A'], 'JP' => [10, 10, 10, 10, 10] }

def menu
  loop do
    print 'Ingresa una opción: '
    puts '1.- Promedios'
    puts '2.- Inasistencias'
    puts '3.- Aprobados'
    puts '4.- Salir'
    opcion = gets.chomp.to_i
    case opcion
      when 1
        #Debe generar un archivo con el nombre de cada alumno y el
        # promedio de sus notas.
        # Se puede leer el archivo completo o ir leyendo y procesando
        # por línea, ambas opciones son válidas.

      when 2
        #Debe contar la cantidad de inasistencias totales y mostrarlas en
        # pantalla.

      when 3
        #Debe mostrar los nombres de los alumnos aprobados. Para eso
        # se debe crear un método que reciba -como argumento- la nota necesaria pa
        # aprobar, por defecto esa nota debe ser 5.
      when 4
        # Debe terminar el programa.

      else
        puts "opción inválida"
      end
    end

  end