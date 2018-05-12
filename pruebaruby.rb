file = File.open('alumnos.csv', 'r')
alumnos = file.readlines
file.close
#print alumnos

data = alumnos.map { |notas| notas.split(', ') }
print data

#promedios
david = data[0].inject(0) { |sum, i| sum + i.to_i}
gonzalo = data[1].inject(0) { |sum, i| sum + i.to_i}
mai = data[2].inject(0) { |sum, i| sum + i.to_i}
jp = data[3].inject(0) { |sum, i| sum + i.to_i}

file = File.open('promedios.txt', 'w')
file.puts "David tiene promedio #{david / 5.0}"
file.puts "Gonzalo tiene promedio #{gonzalo / 5.0}"
file.puts "Mai tiene promedio #{mai / 5.0}"
file.puts "Jp tiene promedio #{jp / 5.0}"
file.close

# f = File.new('promedios.txt', 'w')
# promedios =
# suma = 0
# data[0].each do |valores|
#   suma += valores.to_i
#   print suma
# end

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
        file = File.open('promedios.txt', 'r')
        promedios = file.read
        file.close
        print promedios
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
