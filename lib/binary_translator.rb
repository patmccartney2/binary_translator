class BinaryTranslator

  def initialize
    @alpha_to_binary = {
      "a" => "000001",
      "b" => "000010",
      "c" => "000011",
      "d" => "000100",
      "e" => "000101",
      "f" => "000110",
      "g" => "000111",
      "h" => "001000",
      "i" => "001001",
      "j" => "001010",
      "k" => "001011",
      "l" => "001100",
      "m" => "001101",
      "n" => "001110",
      "o" => "001111",
      "p" => "010000",
      "q" => "010001",
      "r" => "010010",
      "s" => "010011",
      "t" => "010100",
      "u" => "010101",
      "v" => "010110",
      "w" => "010111",
      "x" => "011000",
      "y" => "011001",
      "z" => "011010",
      " " => "000000"
                      }
  end

  def translate(to_be_translated)
    translated = []
    split = to_be_translated.downcase.chars
    split.each do |character|
      translated << @alpha_to_binary[character]
    end
    return translated.join
  end

  # def translate_to_text(binary)
  #   translated = []
  #   length = binary.chars.length
  #   words_split = binary.chars.each_with_index do |charac|
  #
  #   words_split.each do |word|
  #     translated << @aplha_to_binary.fetch(word)
  #   end
  #   return translated
  # end


end
