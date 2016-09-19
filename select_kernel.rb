# results = select [STDIN], nil, nil, 5
# if !results
#   puts "no input"
# else
#   nombre = gets.chomp
#   puts nombre
# end

# ready_fds = select [ $stdin ], [], [], 10
# puts ready_fds.first.first.gets unless ready_fds.nil?

# Select espera por una lectura, si no existe toma el segundo parametro (Escritura) y el utlimo son las excepciones.
# Estas deben ser de la clase IO para ser tomadas por SELECT del Kernel RUBY
# El ultimo parámetro es el TIMEOUT o tiempo de espera antes de ejecutar

# ready = select [STDIN],nil,nil,4

# Antes de acabar el TIMEOUT, si se pasa algo se entendera como una STDIN
# Si la STDIN pasada es un METODO o VARAIBLE esta se ejecuta
# Si el TIMEOUT se acaba y no se paso una STDIN, se pasa el IO de Escritura plateado