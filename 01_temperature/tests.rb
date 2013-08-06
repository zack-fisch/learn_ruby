# TIP: Always, ALWAYS read through all of the tests before you even start writing any code.

require "test/unit"

# Again, a file with a specific name needs to be created, in this case "temperature.rb".
# $ touch temperature.rb
require "./temperature.rb"

# Now maybe we can talk more about the line we ignored last problem.
class Temperature_Conversion_Functions < Test::Unit::TestCase

  class FTOC_Method < self
    # "it" is also a method that is given to us by RSpec,
    # that also takes a string and a do-end block.
    def test_converts_freezing_temperature
      # Calling the method ftoc and passing in the integer 32 should return 0.
      assert_equal 0, ftoc(32)
    end

    # The next three tests are similar, except different numbers are being passed in. 
    def test_converts_boiling_temperature
      assert_equal 100, ftoc(212)
    end

    def test_converts_body_temperature
      assert_equal 37, ftoc(98.6)
    end

    def test_converts_arbitrary_temperature
      assert_equal 20, ftoc(68)
    end
  end


  # Now this set of tests describes a different method, 
  # not ftoc() anymore, but ctof(). 

  class CTOF_Method < self
    def test_converts_freezing_temperature
      assert_equal 32, ctof(0)
    end

    def test_converts_boiling_temperature
      assert_equal 212, ctof(100)
    end

    def test_converts_arbitrary_temperature
      assert_equal 68, ctof(20)
    end
  end


end

# Remember the difference between integers and floats:
# 1/2 equals 0
# but 1.0/2.0 equals 0.5
# It is important to know this difference to get these tests to pass.

# Also, you can use the following information to figure out what the equation 
# is to convert between the two units, fahrenheit and celsius: 
# 
# 1. One degree fahrenheit is 5/9 of one degree celsius
# 2. The freezing point of water is 0 degrees celsius but 32 degrees fahrenheit
