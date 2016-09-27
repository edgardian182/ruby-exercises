words = [{breed: "raza, como de un perro"}, {tile: "baldosa"}, {yearn: "añorar, ansiar"}, {weed: "mala hierva, remover mala hierva"}, {flush: "enjuagar, rubor, roborizarse, nivelar"}, {tweak: "retocar, pellizcar, retoque"}, {fork: "tenedor, bifurcación"}, {approach: "enfoque, aproximación"}, {regardless: "independientemente, a pesar de"}, {backhoe: "retroescabadora"}, {indeed: "en efecto, en realidad"}, {spit: "escupir, saliva"}, {footwear: "calzado"}, {awkward: "torpe, incomodo, difícil, embarazoso"}, {subtle: "sutil"}, {screw_you: "pudrete"}, {screw_it_up: "arruinarlo"}, {chew: "masticar"}, {chewy: "fibroso, que necesita ser masticado más fuerte o por más tiempo"}, {willpower: "fuerza de voluntad"}, {profitable: "rentable"}, {toast: "brindis, tostada"}, {greedy: "codicioso, goloso"}, {gill: "branquia, agalla, paired respiratory organ of fishes"}, {fin: "aleta, flipper"}, {top_down: "de arriba a abajo"}, {bottom_up: "de abajo hacia arriba"}, {invoice: "factura"}, {burden: "carga, carga pesada"}, {burdened: "agobiado, cargado"}, {lack: "aucencia, falta, don't having enough of something"}, {abide: "acatar, atenerse a, abide by the rules"}, {pretend: "fingir, pretender"}, {despise: "despreciar"} ]

words.shuffle!

puts "Words number: #{words.length}"
puts "How many questions this time?"
test = gets.chomp
test == "all" ? (test = words.length) : (test = test.to_i)
puntos = 0
total = 0

while test > 0

  words.each do |w|
    w.each do |word,meaning|
      puts "Remember #{word.upcase}?"
      ans = gets.chomp.downcase
      # Código para separar palabras así esten con ','
      # .split(/[^\p{L}]/).reject { |item| item.empty? }
      if meaning.split(", ").include?(ans)
        puts "Excelent"
        puntos += 1
      else
        puts "Very bad, the meaning is:  #{meaning}"
      end
    end
    test -= 1
    total += 1
    # Este break quiebra el 'each' para que el 'while' pueda ser evaluado
    break if test <= 0
  end
  puts
  puts "Tu resultado: #{puntos}/#{total}"
end