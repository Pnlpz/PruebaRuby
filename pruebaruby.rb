def menu
file = File.open('alumnos.csv', 'r')
alumnos = file.readlines.map(&:chomp)
file.close
# print alumnos

data = alumnos.map { |notas| notas.split(', ') }
#print data

# Inasistencias // solo funciona en el main.. no puedo hacer lo mismo dentro del menú. me dice que la
# variable 'data' no está definida
inasistencia = data.collect.count { |x| x.include?('A') }
#print "En total hay #{inasistencia} inasistencia(s)"

# Promedios - Listo √
b = []
david = data[0].inject(0) { |sum, i| sum + i.to_i }
b << david
gonzalo = data[1].inject(0) { |sum, i| sum + i.to_i }
b << gonzalo
mai = data[2].inject(0) { |sum, i| sum + i.to_i }
b << mai
jp = data[3].inject(0) { |sum, i| sum + i.to_i }
b << jp
#print b
#def parse_notas(david, gonzalo, mai, jp) end

# aprobados = b.map { |elem| puts "Aprobado con #{elem}" if elem / 5.0 >= 5.0 }
# print aprobados

# Archivo nuevo con promedios - Listo √
file = File.open('promedios.txt', 'w')
file.puts "David tiene promedio #{david / 5.0}"
file.puts "Gonzalo tiene promedio #{gonzalo / 5.0}"
file.puts "Mai tiene promedio #{mai / 5.0}"
file.puts "Jp tiene promedio #{jp / 5.0}"
file.close

# Aprobados - Como hacerlo como método??
# print "David aprueba con promedio #{david / 5.0}" if david / 5.0 >= 5
# print "Gonzalo aprueba con promedio #{gonzalo / 5.0}" if gonzalo / 5.0 >= 5
# print "Mai aprueba con promedio #{mai / 5.0}" if mai / 5.0 >= 5
# print "JP aprueba con promedio #{jp / 5.0}" if jp / 5.0 >= 5


  loop do
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
      when 2
        inasistencia = data.collect.count { |x| x.include?('A') }
        puts "En total hay #{inasistencia} inasistencia(s)"
        # Debe contar la cantidad de inasistencias totales y mostrarlas en
        # pantalla.
      when 3
        puts "David aprueba con promedio #{david / 5.0}" if david / 5.0 >= 5
        puts "Gonzalo aprueba con promedio #{gonzalo / 5.0}" if gonzalo / 5.0 >= 5
        puts "Mai aprueba con promedio #{mai / 5.0}" if mai / 5.0 >= 5
        puts "JP aprueba con promedio #{jp / 5.0}" if jp / 5.0 >= 5
        # Debe mostrar los nombres de los alumnos aprobados. Para eso
        # se debe crear un método que reciba -como argumento- la nota necesaria pa
        # aprobar, por defecto esa nota debe ser 5.
      when 4
        exit
      else
        puts "opción inválida"
      end
    end
end

menu
