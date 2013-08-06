# Pig Latin time!
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.

require "./pig_latin"
require "test/unit"

class Translate < Test::Unit::TestCase

  def test_translates_a_word_beginning_with_a_vowel
    s = translate("apple")
    assert_equal "appleay", s
  end

  def test_translates_a_word_beginning_with_a_consonant
    s = translate("banana")
    assert_equal "ananabay", s
  end

  def test_translates_a_word_beginning_with_two_consonants
    s = translate("cherry")
    assert_equal "errychay", s 
  end

  def test_translates_two_words
    s = translate("eat pie")
    assert_equal "eatay iepay", s
  end

  def test_translates_a_word_beginning_with_three_consonants
    assert_equal "eethray", translate("three")
  end

  def test_counts_sch_as_a_single_phoneme
    s = translate("school")
    assert_equal "oolschay", s
  end

  def test_counts_qu_as_a_single_phoneme
    s = translate("quiet")
    assert_equal "ietquay", s
  end

  def test_counts_qu_as_a_consonant_even_when_its_preceded_by_a_consonant
    s = translate("square")
    assert_equal "aresquay", s
  end

  def test_translates_many_words
    s = translate("the quick brown fox")
    assert_equal s, "ethay ickquay ownbray oxfay"
  end

  # Extra challenges:
  # Write tests and get them to pass for:
  # * capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * the punctuation of the original phrase is retained

end
