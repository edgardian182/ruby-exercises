class OrangeTree
  attr_reader :oranges, :age

  def initialize
    @height = 0
    @age = 0
    @oranges = 0
  end

  def height
    if @height != nil
      "#{@height} m"
    else
      "Time to raise another tree"
    end
  end

  def one_year_passes
    @oranges = 0
    @age += 1
    @height += 0.5
    puts "The tree grows 0.5m more"
    @oranges += if age < 4
      0
    elsif age < 8
      puts "Wow I can see oranges"
      2
    elsif age < 13
      puts "Wow I can see oranges"
      4
    elsif age < 18
      puts "Wow I can see oranges"
      5
    else
      0
    end
    if rotten?
      puts "Your tree has died after #{@age} years"
      puts "Please plant a new tree"
      clear
      # exit
    end
    raise NoMethodError, "The tree rests in peace" if [@height, @age, @oranges].include?(nil)
  rescue NoMethodError
    clear
    puts "Plant another tree, this is already dead"
  end

  def take_orange
    if @oranges > 0
      @oranges -= 1
      puts "What a delicious orange"
    else
      puts "No more oranges to pick this year"
    end
    raise NoMethodError, "Dead" if @oranges == nil
  rescue NoMethodError
    puts "No more oranges in a dead tree"
  end

  private
  def rotten?
    true if age >= 20
  end

  def clear
    @age = nil
    @oranges = nil
    @height = nil
  end
end