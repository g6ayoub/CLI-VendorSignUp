require 'minitest/autorun'
require './app'

class TestRegistration < Minitest::Test 
  def test_collect_email
    vendor = Vendor.new
    
    fake_input = StringIO.new("test@example.com\n")
    original_stdin = $stdin
    $stidin = fake_input

    vendor.collect_email

    $stdin = original_stdin
    assert_equal "test@example.com", vendor.email
  end
end
   
   
   # assert_equal "jim@gmail.com", new_vendor.collect_email("jim@gmail.com"), "Email collection method failed"
 # end
#end
