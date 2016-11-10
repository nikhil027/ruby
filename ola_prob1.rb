user_wallet = 40
promo_codes = { "omg999" => [250, 999], "omg250" => [50, 250]}

puts "*" * 30
sl_no = 1
promo_codes.each do |key, value|
	puts "#{sl_no}. #{key} - #{value.first}"
	sl_no += 1
end
puts "*" * 30

puts "Enter the recharge amount"
recharge_amount = gets.to_f

puts "Enter the promocode"
promo_code = gets.chomp
#puts recharge_amount
#puts promo_codes.to_s
#puts promo_codes.keys

if (promo_codes.keys.include? promo_code) && (recharge_amount == promo_codes.values.include? )
	user_wallet = user_wallet + recharge_amount + promo_codes[promo_code]
else
	user_wallet = user_wallet + recharge_amount
end
puts "Your new balance is Rs #{user_wallet}"