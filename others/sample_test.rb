require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal 5, 'こんにちは'.length
  end
end