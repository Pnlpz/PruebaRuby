def menu
  file = File.open('alumnos.csv', 'r')
  alumnos = file.readlines.map(&:chomp)
  file.close
  # Crear arreglo desde archivo:
  data = alumnos.map { |notas| notas.split(', ') }
  # Inasistencias:
  inasistencia = data.collect.count { |x| x.include?('A') }
  # Promedios:
  david = data[0].inject(0) { |sum, i| sum + i.to_i }
  gonzalo = data[1].inject(0) { |sum, i| sum + i.to_i }
  mai = data[2].inject(0) { |sum, i| sum + i.to_i }
  jp = data[3].inject(0) { |sum, i| sum + i.to_i }
  # Archivo nuevo con promedios:
  file = File.open('promedios.txt', 'w')
  file.puts "David tiene promedio #{david / 5.0}"
  file.puts "Gonzalo tiene promedio #{gonzalo / 5.0}"
  file.puts "Mai tiene promedio #{mai / 5.0}"
  file.puts "Jp tiene promedio #{jp / 5.0}"
  file.close
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
      when 3
        puts "David aprueba con promedio #{david / 5.0}" if david / 5.0 >= 5
        puts "Gonzalo aprueba con promedio #{gonzalo / 5.0}" if gonzalo / 5.0 >= 5
        puts "Mai aprueba con promedio #{mai / 5.0}" if mai / 5.0 >= 5
        puts "JP aprueba con promedio #{jp / 5.0}" if jp / 5.0 >= 5
      when 4
        exit
      else
        puts 'Opción inválida, intenta nuevamente'
    end
    end
end

menu
