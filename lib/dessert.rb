#น.ส.รุจิรางค์ ไวยดารา 5510613275
#นายธนกร เหลืองขจรวิทย์ 5510613309

class Dessert
  
  attr_accessor :name
  attr_accessor :calories
  
  def initialize(name, calories)
    # your code here
    @name = name  
    @calories = calories
  end
  
  def healthy?
    # your code here
    if @calories < 200
      return true
    else return false
    end  
  end
  
  def delicious?
    # your code here
    return true
  end
  
end

class JellyBean < Dessert
  
  attr_accessor :flavor
  
  def initialize(flavor)
    # your code here
    @flavor = flavor
    @name = @flavor + " Jelly Bean"
    @calories = 5 
  end
  
  def delicious?
    # your code here
    if @flavor == "licorice"
      return false
    else return true
    end
  end
  
end
