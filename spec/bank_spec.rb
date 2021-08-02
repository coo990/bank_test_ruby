require 'bank'

describe Bank do
  it 'has a balance of 0' do
    bank = Bank.new
    expect(bank.balance).to eq(0)
  end
end