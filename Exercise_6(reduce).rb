=begin
  The sum of the squares of the first ten natural numbers is,

  1**2 + 2**2 + ... + 10**2 = 385
  The square of the sum of the first ten natural numbers is,

  (1 + 2 + ... + 10)**2 = 55**2 = 3025

  Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end

a = (1..100).map{|n| n**2}.reduce(:+)
b = (1..100).reduce(:+)**2
b - a

# ANOTHER SOLUTION
a = (1..100).reduce([0,0]){|r,n| [r[0]+n, r[1]+n**2]}
# reduce(initial_value//initial_residual) {|residual, number| residual[0].....}
a[0]**2 - a[1]


# ANS = 25164150