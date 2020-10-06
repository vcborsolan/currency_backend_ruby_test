require 'spec_helper'
require 'currency'

describe 'Currency converter' do
    it 'Deve verificar se a moeda atual é igual a moeda objetivo'  do
        currency = Currency.new
        expect(currency.convert(1.0 , :BRL , :BRL)).to eq(true)
    end
    it 'Caso tenha conversor direto , o realizar corretamente' do
        currency = Currency.new
        expect(currency.convert(1.0 , :USD , :BRL)).to eq(5.65)
        expect(currency.convert(1.0 , :ARS , :BRL)).to eq(0.07)
        expect(currency.convert(1.0 , :EUR , :USD)).to eq(1.18)
        expect(currency.convert(1.0 , :GBP , :BRL)).to eq(7.24)
        expect(currency.convert(1.0 , :BTC , :USD)).to eq(10700.0)

    end
    it 'Caso nao tenha conversor direto , o relizar corretamente' do
        
    end
end