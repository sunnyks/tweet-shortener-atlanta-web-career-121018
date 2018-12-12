# Write your code here.

              
def word_substituter(tweet)
  
  dict = {"hello" => 'hi',
              "to" => '2',
              "two" => '2',
              "too" => '2',
              "for" => '4',
              "four" => '4',
              "be" => 'b',
              "you" => 'u',
              "at" => '@',
              "and" => '&'}
              
  words = tweet.split(" ")
  new_tweet = []
  words.each do |word|
    if dict.key?(word)
    new_tweet << dict[word]
    else
    new_tweet << word 
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  word_substituter(tweet) if tweet.length > 140
else tweet
end