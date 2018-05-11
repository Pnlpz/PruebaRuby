
# Donde la A señala que el alumno estuvo ausente en la prueba.
# Crear un menú con 4 opciones:
# Se debe validar, en caso que se ingrese otra opción, que la opción
# escogida sea 1, 2, 3, o 4. Por ende, si se ingresa cualquier otra opción el
# programa debe mostrar que la opción es inválida, mostrar nuevamente
# el menú y la posibilidad de volver a ingresar una opción

file = File.open('alumnos.csv', 'r')
alumnos = file.readlines
file.close
# print alumnos

data = alumnos.map { |notas| notas.split(', ') }
print data


def promedio(x)
  suma = 0
  data[x].map do |valor|
    suma += valor[x].to_i
  end
  print suma / 5
end

promedio(3)

# alumnos.each do |notas|
#   notas.split(', ')
#   print notas
# end

# alumnos.each_with_index do |line, i|
#   if line % 6 == 0
#     puts line
# end

# suma = 0
# alumnos.map do |notas|
#   suma += notas[0].to_i
# end
# print suma

def menu
  loop do
    opcion = 0
    print 'Ingresa una opción: '
    puts '1.- Promedios estudiantes'
    puts '2.- Inasistencias'
    puts '3.- Estudiantes aprobados'
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
        exit
        # Debe terminar el programa.
      else
        puts "opción inválida"
      end
    end
end

menu
