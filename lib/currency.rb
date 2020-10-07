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
            return value
        elsif @current_currencys.key?(current_currency) && @current_currencys[current_currency].key?(target_currency)
            return (value*@current_currencys[current_currency].values.first).round(2)

        elsif @current_currencys[target_currency] && @current_currencys[target_currency].key?(current_currency)
            value = (value/@current_currencys[target_currency].values.first).round(2)

        elsif @current_currencys[current_currency]
            value = value*@current_currencys[current_currency].values.first
            value = convert(value , @current_currencys[current_currency].keys.first , target_currency)

        elsif @current_currencys[target_currency]
            value = convert(value , current_currency , @current_currencys[target_currency].keys.first)
            value = convert(value ,@current_currencys[target_currency].keys.first , target_currency )
        end
    end
end