=begin
  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

# **************************************
    # SLOW SOLUTION
# **************************************
a = 2520
count = 0
while count < 10
  (11..20).each do |n|
    if a%n == 0
      count += 1
    end
  end
  if count < 10
    a += 1
    count = 0
  end
end

# **************************************
    # EASY SOLUTION
# **************************************

(1..20).reduce(:lcm)



# ANS = 232792560