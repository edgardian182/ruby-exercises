words = [{breed: "raza, como de un perro"}, {tile: "baldosa"}, {yearn: "añorar, ansiar"}, {weed: "mala hierva, remover mala hierva"}, {flush: "enjuagar, rubor, roborizarse"}, {tweak: "retocar, pellizcar, retoque"}, {fork: "tenedor, bifurcación"}, {approach: "enfoque, aproximación"}, {regardless: "independientemente, a pesar de"}, {backhoe: "retroescabadora"}, {indeed: "en efecto, en realidad"}, {spit: "escupir, saliva"}, {footwear: "calzado"}, {awkward: "torpe, incomodo, difícil"}, {subtle: "sutil"}, {screw_you: "pudrete"}, {screw_it_up: "arruinarlo"}, {chew: "masticar"}, {chewy: "fibroso, que necesita ser masticado más fuerte o por más tiempo"} ]

words.shuffle!

words.each do |w|
  w.each do |word,meaning|
    puts "Remember #{word.upcase}?"
    ans = gets.chomp.downcase
    if meaning.include?(ans)
      puts "Excelent"
    else
      puts "Very bad, the meaning is:  #{meaning}"
    end
  end
end