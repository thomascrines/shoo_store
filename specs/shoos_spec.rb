require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoo_order')

class TestShoos < MiniTest::Test


def setup
options = {
  'full_name' => "Johnnie Reese",
  'address' => "37 Castle Terrace",
  'quantity' => 2,
  'size' => 8
}
  @order1 = ShooOrder.new(options)
end

def test_full_name()
  assert_equal("Johnnie Reese", @order1.full_name)
end

def test_address()
  assert_equal("37 Castle Terrace", @order1.address)
end

def test_quantity()
  assert_equal(2, @order1.quantity)
end

def test_size()
  assert_equal(8, @order1.size)
end

end