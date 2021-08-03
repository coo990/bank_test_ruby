class Bank
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def deposit(amount, time)
    @balance += amount
    puts "#{time} || #{amount} || #{balance}"
  end

  def withdraw(amount, time)
    @balance -= amount
    puts "#{time} || #{amount} || #{balance}"
  end

end