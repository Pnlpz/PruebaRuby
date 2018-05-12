file = File.open('alumnos.csv', 'r')
alumnos = file.readlines
file.close
#print alumnos

data = alumnos.map { |notas| notas.split(', ') }
print data

#promedios
david = data[0].inject(0) { |sum, i| sum + i.to_i}
puts david / 5.0
gonzalo = data[1].inject(0) { |sum, i| sum + i.to_i}
puts gonzalo / 5.0
mai = data[2].inject(0) { |sum, i| sum + i.to_i}
puts mai / 5.0
jp = data[3].inject(0) { |sum, i| sum + i.to_i}
puts jp / 5.0





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
        file = File.open("promedios.txt", "w") do |file|
        file.puts "David tiene promedio #{david}"
        file.puts "Gonzalo tiene promedio #{gonzalo}"
        file.puts "Mai tiene promedio #{mai}"
        file.puts "Jp tiene promedio #{jp}"
        end
        file.close
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

#menu
