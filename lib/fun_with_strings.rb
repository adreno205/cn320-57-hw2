#น.ส.รุจิรางค์ ไวยดารา 5510613275
#นายธนกร เหลืองขจรวิทย์ 5510613309

module FunWithStrings
  def palindrome?
    # your code here [w is want] - [W is not want]
    temp = self.gsub(/[\W]/,"")
    test = temp.reverse
    
    tempz = temp.downcase
    testz = test.downcase
    
    if tempz == testz
      return true
    else return false
    end
  end
  
  def count_words
    # your code here
    #temp = self.gsub(/[\W]/,"")
    x = Hash.new(0)
    
    temp = self.downcase 
    tempz = temp.scan(/\w+/)  
    tempz.each do |count| x[count]+=1
    end
    return x
  end
  
  def anagram_groups
    # your code here
    h = Hash.new(0)
    arr = Array.new
    arrz = Array.new
    
    arr = self.split
    arr.each do |x|
      down = x.downcase
      sp = down.chars
      sps = sp.sort
      y = sps.join
      h[x] = y 
      end
      
    h.each_key do |a|
      word=a
      h2=h.delete(a)
      check = 0
      h.each_key do |b|
        check = 0
        if h[b] == h2
           aword = [word,b]
           h.delete(b)
           arrz.push(aword)
           check += 1
        end
      end
        if check == 0
           aword = [word]
           arrz.push(aword)
        end
    end

    return arrz   
    
  end #End of Anagram
  
  
end #End Of All Code 

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
