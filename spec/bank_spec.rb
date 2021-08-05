# frozen_string_literal: true

require 'bank'

describe Bank do
  let(:bank) { Bank.new }

  it 'has a balance of 0' do
    expect(bank.balance).to eq(0)
  end

  it 'adds 1000 to balance on 10/01/2012' do
    bank.deposit(1000.00, '10/01/2012')
    expect(bank.balance).to eq(1000.00)
  end

  it 'withdraws 500 from balance on 12/01/2012' do
    bank.deposit(1000.00, '10/01/2012')
    bank.withdraw(500.00, '12/01/2012')
    expect(bank.balance).to eq(500.00)
  end

  it 'stores transactions' do
    bank.deposit(5000.00, '13/05/2021')
    expect(bank.transaction).to eq(['13/05/2021 || 5000.00 || || 5000.00'])
  end

  it 'prints statement' do
    bank.deposit(1000.00, '10/01/2012')
    expect(bank.statement).to eq(['10/01/2012 || 1000.00 || || 1000.00'])
  end
end
