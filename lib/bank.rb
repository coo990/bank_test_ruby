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
    @transaction << "#{time} || || #{amount} || #{balance}"
  end

  # def transaction
  #   return @transaction.join
  # end

  def statement
    puts "date || credit || debit || balance"
    array = @transaction.sort! { |x, y| y <=> x }
    array.each {|x| puts x }
  end

end