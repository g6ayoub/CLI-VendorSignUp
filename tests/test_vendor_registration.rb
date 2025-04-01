require 'minitest/autorun'
require './app'

class TestRegistration < Minitest::Test 
  def test_registration()
    new_vendor = Vendor.new
    assert_equal "jim@gmail.com", new_vendor.collect_email("jim@gmail.com"), "Email collection method failed"
  end
end
