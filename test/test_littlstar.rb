require 'minitest_helper'

class TestLittlstar < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Littlstar::VERSION
  end

  def test_the_truth
    assert true
  end
end
