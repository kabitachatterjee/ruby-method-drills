##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word
  def first_char(word)
    word.chr.downcase
  end
#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated
  def polly_wanna(word)
    word*3
  end

#count_chars
  # takes in a word
  # returns the number of characters in the word
def count_chars(word)
  word.count word
end
#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message
def yell(msg)
  msg.upcase.concat("!")
end
## STRETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message
  def to_telegram(msg)
    msg.gsub!('.',' STOP')
  end


#spell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
  def spell_out(str)
    str = str.downcase.gsub!('','-').chop
    str.slice(1..str.length)
  end



#seperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string
def seperate(str,sep='-')
  str = str.gsub!('',sep).chop
  str.slice(1..str.length)
end


## STRETCH ##
#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false
  def palindrome_word?(word)
    word.downcase == word.reverse.downcase ? true : false
  end


## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation
  def palindrome_sentence?(str)
    str = str.downcase.gsub!(' ','').gsub(/\W+/, '')
    str == str.reverse ? true : false
  end

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully
  def is_vowel(char)
    char.match(/[aeiou]/i) && char.is_a?(String) ? true : false
  end

#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence
  def add_period(str)
    (str[-1,1] == '.') || (str[-1,1] == '?')|| (str[-1,1] == '!')? str : str.concat('.')
  end
