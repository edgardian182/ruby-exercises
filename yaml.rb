# YAML = Libreria que representa Objetos como Strings para escribirles más facilmente
require 'yaml'

test_array = ["Esta es la primera linea",
              "La segunda linea es mejor",
              "Y no podía faltar la tecera."]

# Tranforma el Objeto Array en un String legible
test_string = test_array.to_yaml

filename = 'prueba.txt'

# Guarda el Array transcrito con YAML en el archivo
File.open(filename, 'w') do |f| 
  f << test_string
end

# Lee la informacion del archivo
read_string = File.read(filename)

# Transforma nuevamente del formato de YAML al de ARRAY
read_array = YAML::load(read_string)