=begin
  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.
=end

require 'prime'

def prime_sum(num=2_000_000)
  Prime.entries(num).reduce(:+)
end