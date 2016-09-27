def secret_code(sentence)
  numbers = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}
  numbers.default = 0
  arr = sentence.split(/\W/).map!{|n| numbers[n]}
  arr.reduce(:+)
end

def initial
  arr = (1..10).to_a
  names = %w(Edgar Andres Quintana Acevedo)
  return [arr,names]
end

class InitSetup
  attr_reader :arr, :names

  def initialize
    @arr = (1..10).to_a
    @names = %w(Edgar Andres Quintana Acevedo)
  end
end

def base
  a = 1
  i = 2
end

def method_name
  base
  i += 1
end

