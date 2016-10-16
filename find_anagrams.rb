def anagrams?(string_1, string_2)
  if anagram_canonical_form(string_1) == anagram_canonical_form(string_2)
    true
  else
    false
  end
end

def anagram_canonical_form(word)
   word.downcase.split('').sort
end

def find_anagrams(target_word, array)
  anagram_array = []
  array.each do |word|
    anagram_array << word if anagrams?(target_word, word)
  end
  anagram_array
end

