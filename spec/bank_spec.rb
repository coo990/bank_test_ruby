require 'bank'

describe Bank do
  let(:bank) { Bank.new }

  it 'has a balance of 0' do
    expect(bank.balance).to eq(0)
  end

  it 'adds 1000 to balance on 10-01-2012' do
    bank.deposit(1000, "10-01-2012")
    expect(bank.balance).to eq(1000)
  end

  it 'withdraws 500 from balance on 12-01-2012' do
    bank.deposit(1000, "10-01-2012")
    bank.withdraw(500, "12-01-2012")
    expect(bank.balance).to eq(500)
  end
  

end