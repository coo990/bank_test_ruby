# frozen_string_literal: true

# Bank test that takes transactions and prints statement
class Bank
  attr_reader :balance

  # (#transaction = Transaction.new)
  def initialize
    @balance = 0
    @transaction = []
    #Transaction.new
  end

  def deposit(amount, time)
    @balance += amount
    @transaction << "#{time} || #{amount}0 || || #{balance}0"
  end

  def withdraw(amount, time)
    @balance -= amount
    @transaction << "#{time} || || #{amount}0 || #{balance}0"
  end

  def statement
    puts 'date || credit || debit || balance'
    # Sorts the array with the first transaction
    # on the bottom
    array = @transaction.sort_by { |x| -x }
    array.each { |x| puts x }
  end
end
