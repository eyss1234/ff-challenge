class InputMembershipFee < ApplicationRecord
  has_many :organisation_units
  has_many :configs, through: :organisation_units
end
