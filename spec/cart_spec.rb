require_relative '../lib/cart.rb'
require 'rspec'

RSpec.describe Cart do
  context 'a new cart' do
    it 'contains no items' do
      expect(@cart).to be_empty
    end
  end
end
