class WordGame

  # Submit a word on behalf of a player. A word is accepted if its letters are contained in the base string used to construct the game AND
  # if it is a word in the provided wordlist.txt.
  # If the word is accepted and its score is high enough, the submission should be added to the high score list.
  # If there are multiple submissions with the same score, all are accepted, BUT the first submission with that score should rank higher.
  # A word can only appear ONCE in the high score list. If the word is already present in the high score list the submission should be rejected.
  def submit_word(word)

  end

  # Return word entry at given position in the high score list, 0 being the highest (best score) and 9 the lowest.
  # You may assume that this method will never be called with position > 9.
  def word_at_index(index)
    ""
  end

  # Return the score at the given position in the high score list, 0 being the highest (best score) and 9 the lowest.
  # You may assume that this method will never be called with position > 9.
  # Which version of ruby did you test this with? We ask for two reasons - 1) for us to validate your code and ensure you're using appropriate ruby methods and 2) you're reading comments :)
  def score_at_index(index)
    0
  end

  def check_against_file(word, file_name)
    file = File.new(file_name, "r")
    for line in file
      reformatted_line = line.gsub("\n", "")
      if (reformatted_line === word)
        return word.length
      else
        return false
      end
    end
    file.close
  end
end

word_game = WordGame.new()
p word_game.check_against_file("aa", "wordlist.txt")
