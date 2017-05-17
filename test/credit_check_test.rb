require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/credit_check.rb'

class TestCreditCheck < Minitest::Test
  def test_it_exists
    credit_check = CreditCheck.new("5541808923795240")
    assert_instance_of CreditCheck, credit_check
  end

  def test_return_value_of_formatted_card_number
    credit_check = CreditCheck.new("5541808923795240")
    formatted_number = credit_check.format_card_number("5541808923795240")
    assert_equal Array, formatted_number.class
    assert_equal "5541808923795240".length, formatted_number.length
    assert_equal "5541808923795240"[-1], formatted_number.first
  end
end
