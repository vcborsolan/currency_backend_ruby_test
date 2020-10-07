require 'spec_helper'
require 'currency'

describe 'Currency converter' do
    it 'Deve verificar se a moeda atual é igual a moeda objetivo'  do
        currency = Currency.new
        expect(currency.convert(1.0 , :BRL , :BRL)).to eq(1.0)
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
        currency = Currency.new
        expect(currency.convert(1.0 , :EUR , :GBP)).to eq(0.92)
        expect(currency.convert(1.0 , :USD , :GBP)).to eq(0.78)
        expect(currency.convert(1.0 , :EUR , :ARS)).to eq(95.24)
        expect(currency.convert(1.0 , :EUR , :BRL)).to eq(6.67)
        expect(currency.convert(1.0 , :USD , :ARS)).to eq(80.71)
        expect(currency.convert(1.0 , :BTC , :ARS)).to eq(863642.86)
        expect(currency.convert(1.0 , :ARS , :EUR)).to eq()
        expect(currency.convert(1.0 , :EUR , :BTC)).to eq()
        expect(currency.convert(1.0 , :BRL , :BTC)).to eq()
        expect(currency.convert(1.0 , :BTC , :BRL)).to eq()

    end
end