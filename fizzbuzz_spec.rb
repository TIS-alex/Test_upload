require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( 'fizzbuzz' )

class Fizz_buzz < MiniTest::Test

  def test_fizz_buzz_3_returns_fizz
    assert_equal("Fizz", fizz_buzz(3))
  end

def test_fizz_buzz_returns_buzz
  assert_equal("Buzz", fizz_buzz(5))

end


def test_fizz_bizz_returns_fizz_buzz
  assert_equal("Fizz Buzz", fizz_buzz(15))
end

end
