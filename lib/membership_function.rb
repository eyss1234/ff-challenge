def calculate_membership_fee(rent_amount, rent_period, organisation_unit_config = false)
  rent_amount_in_pence = rent_amount * 100

  if organisation_unit_config
    fee_amount = @organisation_unit[:fixed_membership_fee_amount]
    membership_fee_is(fee_amount)
  elsif rent_period == 'month' && rent_amount_in_pence >= 11000 && rent_amount_in_pence <= 866000
    weekly_rent_amount = (rent_amount_in_pence * 12) / 52
    fee_amount = weekly_rent_amount * 1.2
    membership_fee_is(fee_amount)
  elsif rent_period == "week" && rent_amount_in_pence >= 2500 && rent_amount_in_pence <= 200000
    weekly_rent_amount = rent_amount_in_pence
    fee_amount = weekly_rent_amount * 1.2
    membership_fee_is(fee_amount)
  else
    "The amount given is outside the range"
  end
end

def membership_fee_is(fee_amount)
  min_fee = 12000 * 1.2
  if fee_amount < min_fee 
    "The membership fee is #{min_fee.to_i} pence"
  else
    "The membership fee is #{fee_amount.round} pence"
  end
end


# @organisation_unit = {has_fixed_membership_fee: false, fixed_membership_fee_amount: 35000}

#calculate_membership_fee(15, "month", @organisation_unit[:has_fixed_membership_fee])

