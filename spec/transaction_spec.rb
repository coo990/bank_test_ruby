# frozen_string_literal: true

require 'transaction'

describe Transaction do
  it 'returns list of transaction' do
    expect(print_transaction).to eq(['10/01/2012 || 1000.00 || || 1000.00'])
  end
end
