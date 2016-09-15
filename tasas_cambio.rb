require 'money'
require 'money/bank/google_currency'

Money.default_bank = Money::Bank::GoogleCurrency.new
Money.use_i18n = false
Money::Bank::GoogleCurrency.ttl_in_seconds = 30

puts "USD to EUR:"
puts "  #{Money.new(1_00, "USD").exchange_to(:EUR)}"

puts "USD to COP: "
puts "  #{Money.new(1_00, "USD").exchange_to(:COP)}"
puts "EUR to COP: "
puts "  #{Money.new(1_00, "EUR").exchange_to(:COP)}"


