class Bank
  attr_reader :balance, :transaction
  def initialize
    @balance = 0
    @transaction = []
  end

  def deposit(amount, time)
    @balance += amount
    @transaction << "#{time} || #{amount} || || #{balance}"
  end

  def withdraw(amount, time)
    @balance -= amount
    #puts "#{time} || || #{amount} || #{balance}"
  end

  def transaction
    return @transaction.join
  end

end