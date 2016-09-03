=begin
  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
=end

a = (100..999)
palindromic = []
a.each do |n|
  a.each do |n2|
    c = (n * n2).to_s
    palindromic << c if c == c.reverse
  end
end
palindromic.map!(&:to_i).max