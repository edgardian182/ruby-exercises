=begin
  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

  What is the 10 001st prime number?
=end

require 'prime'

def prime_number(num=10001)
  primes = []
  init = 1
  while primes.length < num
   primes << init if init.prime?
   init += 1
  end
  primes[-1]
end

# *************************************
#     THE EASIEST
# *************************************
require 'prime'

def prime_number(num=10001)
  Prime.take(num).last
end

# ANS = 104743