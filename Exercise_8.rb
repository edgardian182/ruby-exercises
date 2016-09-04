=begin
  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

  a**2 + b**2 = c**2
  For example, 3**2 + 4**2 = 9 + 16 = 25 = 52.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.
=end

# ***********************************************

# THIS WORKS FOR SPECIALLY FOR a >= 200
# NO mathematically explored the problem

# ***********************************************

def pitagoras(a,b,c)
  a_init = a
  b_init = b
  c_init = c
  while ((a + b + c == 1000) && (a < b) && (b < c))
    if (c**2 > a**2 + b**2) && (c**2 != a**2 + b**2)
      c -= 1
      b += 1
      if b >= c || a >= b
        a = a_init + 2
        b = b_init - 1
        c = c_init - 1
        a_init = a
        b_init = b
        c_init = c
      end
    elsif (a**2 + b**2 > c**2)
      b -= 1
      a += 1
      if (a**2 + b**2 > c**2)
        a -= 3
        b += 1
        c += 2
      end

    elsif (c**2 == a**2 + b**2)
      break
    end
  end
  if a + b + c != 1000
    puts "La suma no da 1000"
  end
  puts ["a = #{a}","b = #{b}","c = #{c}"]
  puts [a**2, b**2, c**2]
  print a*b*c
end
