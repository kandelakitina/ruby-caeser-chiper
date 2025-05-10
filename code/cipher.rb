def caesar_cipher(string, shift_index)

  alphabet = ('a'..'z').to_a
  uppercase = ('A'..'Z').to_a

  result = string.chars.map do |char|
    if alphabet.include?(char)
      new_index = (alphabet.index(char) + shift_index) % 26
      alphabet[new_index]
    elsif uppercase.include?(char)
      new_index = (uppercase.index(char) + shift_index) % 26
      uppercase[new_index]
    else
      char  # leave spaces, punctuation, numbers, etc.
    end
  end.join

  result
end