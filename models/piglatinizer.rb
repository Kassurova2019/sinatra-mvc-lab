require 'pry'
class PigLatinizer

   

     def piglatinize(user_input)
        

        words = user_input.split(" ")
        new_array = words.map do |word|
         
        if (/[aAeEiIoOuU]/).match(word[0])
            word + "way"
        else 
            letter1 = ""
    new_word = " "
            word.each_char do |letter|
               if (/[bBcdDCfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXyYzZ]/).match(letter)
                letter1 = letter1 + letter
               else
          
          new_word = word[letter1.length..-1] + letter1  + "ay"
          new_word
            break
               end
            end
            new_word

        end
    end
        #binding.pry
new_array.join(" ")
     end 


end