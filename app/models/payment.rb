class Payment < ApplicationRecord
  attr_accessor :card_number, :card_cvv, :card_expires_month, :card_expires_year
  belongs_to :user

  def self.month_options
    Date::MONTHNAMES.compact.each_with_index.map { |value, index| ["#{index+1} - #{value}", index+1] }
  end

  def self.year_options
    (Date.current.year..Date.current.year + 20).to_a
  end

  def process_payment
    customer = Stripe::Customer.create(email: email, card: token)

    Stripe::Charge.create(customer: customer.id,
                          amount: 1000,
                          description: 'Premium',
                          currency: 'usd')
  end
end
