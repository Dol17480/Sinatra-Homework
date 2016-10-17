require 'minitest/autorun'
require_relative '../models/formatter'

class TestFormatter < Minitest::Test

  def setup
    @formatter = Formatter.new
  end

  def test_upcase()
    assert_equal("E13 ZQF", @formatter.upcase("e13 zqf"))
  end

  def test_camel_case()
    assert_equal("Codeclan", @formatter.camel_case("code clan"))
  end

end