# In this problem we are going to make a calculator. 

# Remember to create the file!
require "./calculator.rb"
require "test/unit"

# #add takes two parameters and adds them
class Add < Test::Unit::TestCase

  def test_adds_0_and_0
    assert_equal 0, add(0,0)
  end

  def test_adds_2_and_2
    assert_equal 4, add(2,2)
  end

  def test_adds_positive_numbers
    assert_equal 8, add(2,6)
  end
end

# #subtract takes two parameters and subtracts the second from the first
class Subtract < Test::Unit::TestCase

  def test_subtracts_numbers
    assert_equal 6, subtract(10,4)
  end
end

# #sum takes an *array* of numbers and adds them all together
# This one is a bit trickier!
class Sum < Test::Unit::TestCase 

  def test_computes_the_sum_of_an_empty_array
    assert_equal 0, sum([])
  end

  def test_computes_the_sum_of_an_array_of_one_number
    assert_equal 7, sum([7])
  end

  def test_computes_the_sum_of_an_array_of_two_numbers
    assert_equal 18, sum([7, 11])
  end

  def test_computes_the_sum_of_an_array_of_many_numbers
    assert_equal 25, sum([1,3,5,7,9)]
  end
end

# Extra Credit:
# If you feel you're up for the challenge, fill in the missing code in the tests below,
# based off the descriptions, and get them to pass.

class Multiply < Test::Unit::TestCase

  def test_multiplies_two_numbers
  end

  def test_multiplies_several_numbers
  end

end

# http://en.wikipedia.org/wiki/Factorial
class Factorial < Test::Unit::TestCase

  def test_computes_the_factorial_of_0
  end

  def test_computes_the_factorial_of_1
  end

  def test_computes_the_factorial_of_2
  end

  def test_computes_the_factorial_of_5
  end

  def test_computes_the_factorial_of_10
  end
end
