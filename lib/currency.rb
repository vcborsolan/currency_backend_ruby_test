class Currency

    def initialize
        @current_currencys = {
            USD: {BRL: 5.65},
            ARS: {BRL: 0.07},
            EUR: {USD: 1.18},
            GBP: {BRL: 7.24},
            BTC: {USD: 10700.0}
        }
    end

    def convert(value , current_currency , target_currency)
        if current_currency == target_currency
            return true
        elsif @current_currencys[current_currency].keys.first == target_currency
            return value*@current_currencys[current_currency].values.first
        # elsif 
        end
    end
end
