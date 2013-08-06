require "./simon_says"
require "test/unit"

# By now we should be getting better at reading tests. We should able to see 
# what methods will need to be defined and what they need to return.

class Simon_Says < Test::Unit::TestCase
  class Echo < self
    def test_should_echo_hello
      # calling the method echo and passing in "hello"
      # should return "hello"
      assert_equal "hello", echo("hello")
    end

    def test_should_echo_bye
      assert_equal "bye", echo("bye")
    end
  end

  class Shout < self
    def test_should_shout_hello
      # calling the method shout and passing in "hello"
      # should return "HELLO"
      assert_equal "HELLO", shout("hello")
    end

    def test_should_shout_multiple_words
      assert_equal "HELLO WORLD", shout("hello world")
    end
  end

  class Repeat < self
    def test_should_repeat
      assert_equal "hello hello", repeat("hello")
    end

    # Wait a second! How can you make the "repeat" method
    # take one *or* two arguments?
    #
    # def repeat(string, num = 1)
    #   # your code here
    # end
    #
    # The important part is num = 1. What happens is if a num isn't given,
    # then num will fallback on 1, i.e. it has a default value of 1.
    def test_should_repeat_a_number_of_times
      assert_equal "hello hello hello", repeat("hello", 3)
    end
  end

  class Start_of_word < self
    def test_returns_the_first_letter
      assert_equal "h", start_of_word("hello", 1)
    end

    def test_returns_the_first_two_letters
      assert_equal "Bo", start_of_word("Bob", 2)
    end

    def test_returns_the_first_several_letters
      s = "abcdefg"
      assert_equal "a", start_of_word(s, 1)
      assert_equal "ab", start_of_word(s, 2)
      assert_equal "abc", start_of_word(s, 3)
    end
  end

  class First_word < self
    def test_tells_us_the_first_word_of_hello_world_is_hello
      assert_equal "Hello", first_word("Hello World")
    end

    def test_tells_us_the_first_word_of_oh_dear_is_oh
      assert_equal "oh", first_word("oh dear")
    end
  end

  class Titleize < self
    def test_capitalizes_a_word
      assert_equal "Jaws", titleize("jaws")
    end

    def test_capitalizes_every_word_aka_title_case
      assert_equal "David Copperfield", titleize("david copperfield")
    end

    def test_doesnt_capitalize_little_words_in_a_title
      assert_equal "War and Peace", titleize("war and peace")
    end

    def test_does_capitalize_little_words_at_the_start_of_a_title
      assert_equal "The Bridge over the River Kwai", titleize("the bridge over the river kwai")
    end
  end

end
