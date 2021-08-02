require 'bank'

describe Bank do
  it 'has a balance of 0' do
    bank = Bank.new
    expect(bank.balance).to eq(0)
  end

  it 'adds 1000 to balance' do
    bank = Bank.new
    expect(bank.deposit(1000)).to eq(1000)
  end

end