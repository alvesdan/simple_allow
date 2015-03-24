require_relative '../lib/simple_allow'

RSpec.describe SimpleAllow do
  let(:string) { 'one' }
  let(:symbol) { :one }

  describe 'with string' do
    it 'filters not allowed strings' do
      result = string.allow('two', 'three')
      expect(result).to be_nil
    end

    it 'returns allowed strings' do
      result = string.allow('one')
      expect(result).to eq string
    end
  end

  describe 'with symbol' do
    it 'filters not allowed symbols' do
      result = symbol.allow(:two, :three)
      expect(result).to be_nil
    end

    it 'returns allowed symbols' do
      result = symbol.allow(:one, :two)
      expect(result).to eq symbol
    end
  end
end
