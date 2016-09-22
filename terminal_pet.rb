require 'timeout'

def user_order
  begin
    method_call = Timeout::timeout(1.2){gets.chomp}
    case method_call
      when "f" then feed
      when "z" then sleeping
      when "p" then poo
    end
  rescue Timeout::Error

  end
end

def feed
  puts "Eating"
  sleep 1
end

def sleeping
  puts "zzz zzz zzz"
  sleep 1
end

def poo
  puts "mmmm poop"
  sleep 1
end

# Initial variables
ida = 1
walk = 5
face = 1
distance = 40
time = 0
while true
  pet = " o o \n --- "
  pet_2 = " O O \n === "
  pet_arr = pet.split("\n")
  pet_arr2 = pet_2.split("\n")

  if time > 10
    pet_arr.map!.with_index do |n,i|
      if i == 0
        "'" + n + "'"
      else
        " " + n + " "
      end
    end
    pet_arr2.map!.with_index do |n,i|
      if i == 0
        "'" + n + "'"
      else
        " " + n + " "
      end
    end
    # Se usa para que cada cierto tiempo muestre la necesidad de la mascota
    puts "I'm hungry" if time % 8 == 0
  end

  if face == 1
    puts "Feed(f)  /  Sleep(z)  /  Poo(p)"
    puts
    pet_arr.each {|n| puts n.rjust(walk)}
    # sleep 0.3
    face = 0
    user_order
    time += 1
    # system "osascript -e 'tell app \"System Events\" to display alert \"Your pet need you\"'" if time > 10
        # Also use 'display dialog'
    # system "osascript -e 'display notification \"Your pet need you\" with title \"Terminal Pet\"'" if time > 10

    system "clear"
  else
    puts "Feed(f)  /  Sleep(z)  /  Poo(p)"
    puts
    pet_arr2.each {|n| puts n.rjust(walk)}
    # sleep 0.3
    face = 1
    user_order
    time += 1
    system "clear"
  end

  if walk < distance && ida == 1
    walk += 5
  elsif walk == distance
    ida = 0
    walk -= 5
  elsif walk > 5 && ida == 0
    walk -= 5
  elsif walk <= 5
    ida = 1
    walk += 5
  end
end




