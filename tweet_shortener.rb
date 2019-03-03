require 'pry' 

def dictionary
  dictionary= {"hello" => "hi", "to, two, too" => '2', "for, four" => '4','be' => 'b', 'you'=>'u', "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  dictionary
  list = dictionary.keys.split(,)
  
  new_array = tweet.split
  new_array.collect! do |x|
    if (list.include?(x))
      dictionary[x]
    else
      x 
       
    end 
  end 
  new_array.join(" ")  
end 
