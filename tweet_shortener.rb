def dictionary
  dictionary = {"hello" =>'hi',
"to, two, too" => '2', 
"for, four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" =>"&"}
end

def word_substituter(string) 
  string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word 
    end 
  end.join(" ")
end 
word_substituter(tweet_one)

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end