class CreditCheck
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
  end
  
  def format_card_number(card_number
    card_number.split("").reverse
  end
end
