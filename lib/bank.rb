# frozen_string_literal: true

# Bank test that takes transactions and prints statement
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

  def statement
    puts 'date || credit || debit || balance'
    # Sorts the array with the first transaction
    # on the bottom
    array = @transaction.sort! { |x, y| y <=> x }
    array.each { |x| puts x }
  end
end
