require 'pry' 

def dictionary
  dictionary= {"hello" => "hi", "to, two, too" => '2', "for, four" => '4','be' => 'b', 'you'=>'u', "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  dictionary
  list = dictionary.keys
  new_array = tweet.split
  new_array.each do |x|
    if list.include?(x)
      #{x}= "#{list["#{x}"]}"
      binding.pry 
    end 
  end 
  new_array.join(" ")  
end 
