def raise_rescue
  # Metodo que puede causar error dentro de bloque BEGIN/END
  # Un metodo es implicitamente un "Exeption Block" y no necesita el begin
  # begin
    puts "Estoy antes del raise"
    raise "Un error ha ocurrido"
    puts "Estoy despues del raise"
  rescue
    puts "Estoy rescatando el error"
  ensure
    puts "Error rescatado y todo"
  end

  puts "Estoy despues del bloque"
end


begin
  name = Timeout::timeout(3){
    gets.chomp
  }
rescue
  puts "No alcanzaste"
  retry
end
