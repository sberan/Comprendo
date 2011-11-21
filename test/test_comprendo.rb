require 'test/unit'
require 'comprendo'

  
class ComprendoTest < Test::Unit::TestCase
  include Comprendo
  
  def test_simple
    assert_equal [1, 2, 3], `x for x in [1,2,3]`
  end
  
  def test_view
    assert_equal [1, 4, 9], `x*x for x in [1,2,3]`
  end
  
  def test_if
    assert_equal [1,3], `x for x in [1, 2, 3, 4] if x%2 == 1`
  end
  
  def test_unless
    assert_equal [2,4], `x for x in [1, 2, 3, 4] unless x%2 == 1`
  end
  
  def test_var
    @a = [3,4,5]
    @z = 4
    assert_equal [7, 8, 9], `x + @z for x in @a`
  end
end
