def dictionary
  dictionary = {
"hello" =>'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" =>"&"}
end

def word_substituter(string) 
 string = string.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word 
    end 
  end
  string.join(" ")
end 

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end 
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  else 
    tweet 
  end 
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    shortened_tweet[0..139]
  else 
    tweet 
  end 
end
  