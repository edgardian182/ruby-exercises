=begin
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
=end

# PRIME FACTOR: Exact Prime divider numbers for an integer

# *****************************************************************************
#                                     HARD WAY
# *****************************************************************************


# def prime_factors(num=100)
#   # First we get the square root of the number and round it up
#   factors = Math.sqrt(num).ceil
#   # Then we eliminate the even numbers except 2 in a range from 2 to the square root
#   factors = (2..factors).to_a.delete_if{|n| (n!=2 && n.even?)}
#   factors = factors.to_a.delete_if{|n| (n!=3 && n%3 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=5 && n%5 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=7 && n%7 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=11 && n%11 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=13 && n%13 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=17 && n%17 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=19 && n%19 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=23 && n%23 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=29 && n%29 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=31 && n%31 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=37 && n%37 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=41 && n%41 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=43 && n%43 == 0)}
#   factors = factors.to_a.delete_if{|n| (n!=47 && n%47 == 0)}
#   # Then we leave only the prime numbers
#   factors.map!.with_index do |n,i|
#     i -= 1
#     while i >= 0
#       if n%factors[i] == 0
#         n = 100
#         break
#       end
#       i -= 1
#     end
#     n
#   end
#   factors.delete(100)
#   # factors.delete_if{|n| 100%n != 0}
#   r = []
#   factors.each do |n|
#     if num%n == 0
#       r << n
#     end
#   end
#   r

#   # If we don't get any prime_factor the number passed is prime
# end



# *****************************************************************************
#                                     HARD WAY 2
# *****************************************************************************


# def prime_factors(num=100)
#   # First we get the square root of the number and round it up
#   factors = Math.sqrt(num).ceil
#   factors = (2..num).to_a
#   index = 0
#   p = [2]  # Almacena numeros primos
#   salir = true
#   factors.delete_if{|n| n!=p[-1] && n%p[-1]==0}
#   while (index < factors.length && num>100e6 ? p.length < 1000 : p.length < 400)
#     condicion = true
#     while condicion == true
#       resultados = []
#       p.each do |prime|
#         resultados << factors[index]%prime
#       end
#       if resultados.include?(0)
#         factors.delete(factors[index])
#       else
#         p << factors[index]
#         factors.delete_if{|n| n!=p[-1] && n%p[-1]==0}
#         index += 1
#         condicion = false
#       end
#     end
#   end
#   factors.unshift(2)
#   # Then we leave only the prime numbers
#   factors.map!.with_index do |n,i|
#     i -= 1
#     while i >= 0
#       if n%factors[i] == 0
#         n = 100
#         break
#       end
#       i -= 1
#     end
#     n
#   end
#   factors.delete(100)
#   # factors.delete_if{|n| 100%n != 0}
#   r = []
#   factors.each do |n|
#     if num%n == 0
#       r << n
#     end
#   end
#   r
# end



# *****************************************************************************
#                                     EASY WAY
# *****************************************************************************

require 'prime'

def prime_factors(num)
  # First we get the square root of the number and round it up
  factors = Math.sqrt(num).ceil
  factors = (2..factors)
  r = []
  factors.each do |n|
    if n.prime? && num%n==0
      r << n
    end
  end
  r
end


