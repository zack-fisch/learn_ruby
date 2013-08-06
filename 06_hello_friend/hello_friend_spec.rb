require "./friend"
require "test/unit"

class Friend < Test::Unit::Testcase

  def test_says_hello_to_someone
    friend = Friend.new
    assert_equal "Hello, Bob!", greet("Bob")
  end

  def test_says_hello_to_no_one
    # Hint: remember default values?
    #
    # def greet(name = ?)
    #   # your code here
    # end
    #
    # What should ? be equal to?
    friend = Friend.new
    assert_equal "Hello!", friend.greet
  end
end
