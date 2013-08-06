require "./silly_blocks"
require "test/unit"

class Some_Silly_Block_Functions < Test::Unit::Testcase

  class Reverser < self
    def reverses_the_string_returned_by_the_default_block
      result = reverser do
        "hello"
      end
      assert_equal "olleh", result
      # You might be tempted to ask yourself what the hell is happening here.
      # Well no worries! Superman is here to the rescue!
      # (Heh, you probably don't even know whose written these comments.)
      # 
      # Let's look at this snippet of code in particular:
      # 
      # reverser do 
      #   "hello"
      # end
      #
      # reverser is still a method, and it should return the reverse of the given string, i.e. "olleh",
      # except the string is not being passed in as a parameter. It's being passed in as a do-end block.
      # The way this method can get that do-end block is through yield.
      #
      # def example 
      #   string = yield # yield is equal to... 
      #   string.upcase
      # end
      # 
      # example do 
      #   "My name is Will Richman." # ...this line
      # end
      # 
      # So to get this test to pass the reverser method would look like:
      # 
      # def reverser
      #   yield.reverse
      # end
    end

    def reverses_each_word_in_the_string_returned_by_the_default_block
      # Now edit the reverser method above to get this test to pass 
      result = reverser do
        "hello dolly"
      end
      assert_equal "olleh yllod", result
    end
  end

  class Adder < self
    def adds_one_to_the_value_returned_by_the_default_block
      assert_equal 6, adder do
        5
      end
      # def adder
      #   num = yield
      #   # what do you want do you with num?
      # end
    end

    def adds_3_to_the_value_returned_by_the_default_block
      assert_equal 8, adder(3) do
        5
      end
    end
  end

  class Repeater < self
    def executes_the_default_block
      n = 2
      repeater do
        n += 3
      end
      assert_equal 4, n
    end

    def executes_the_default_block_3_times
      n = 0
      repeater(3) do
        n += 1
      end
      assert_equal 3, n
    end

    def executes_the_default_block_10_times
      n = 0
      repeater(10) do
        n += 1
      end
      assert_equal 10, n
    end

  end

end
