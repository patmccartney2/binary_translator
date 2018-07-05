require './lib/binary_translator.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BinaryTranslatorTest < Minitest::Test

  def test_existence
    translator = BinaryTranslator.new
    assert_instance_of BinaryTranslator, translator
  end

  def test_translate_single_letter
      bt = BinaryTranslator.new
      result = bt.translate("a")
      assert_equal "000001", result
  end

  def test_it_can_translate_words
    bt = BinaryTranslator.new
    result = bt.translate("turing")
    assert_equal "010100010101010010001001001110000111", result
  end

  def test_it_can_translate_capitalized
    bt = BinaryTranslator.new
    result = bt.translate("TURING")
    assert_equal "010100010101010010001001001110000111", result
  end

  def test_it_ignores_non_letter_characters
    bt = BinaryTranslator.new
    result = bt.translate("!@{$#%^&*()}")
    assert_equal "", result
  end

  def test_it_will_translate_spaces
    bt = BinaryTranslator.new
    result = bt.translate("Hello World!")
    assert_equal "001000000101001100001100001111000000010111001111010010001100000100", result
  end

  def test_it_can_translate_backwards
    bt = BinaryTranslator.new
    result = bt.translate_to_text("001000000101001100001100001111000000010111001111010010001100000100")
    assert_equal "hello world", result
  end
end
