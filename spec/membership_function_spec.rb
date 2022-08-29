require 'spec_helper'
require_relative '../lib/membership_function'

describe '#membership_function' do
  it 'should give error when invalid rent amount/month is supplied' do
    expect(calculate_membership_fee(100, "month")).to eq "The amount given is outside the range"
  end

  it 'should return 22153 pence membership fee when month rent is £800' do
    expect(calculate_membership_fee(800, "month")).to eq "The membership fee is 22153 pence"
  end

  it 'should return minimum membership fee when rent is lower than £120' do
    expect(calculate_membership_fee(100, "week")).to eq "The membership fee is 14400 pence"
  end

  it 'should return 24000 pence membership fee when week rent is £200' do
    expect(calculate_membership_fee(200, "week")).to eq "The membership fee is 24000 pence"
  end

end