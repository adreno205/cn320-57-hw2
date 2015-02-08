#น.ส.รุจิรางค์ ไวยดารา 5510613275
#นายธนกร เหลืองขจรวิทย์ 5510613309

class RockPaperScissors
  class NoSuchStrategyError < StandardError ; end
 
def self.winner(player1, player2)
    if (player2[1]!="R" && player2[1]!="S" &&player2[1]!="P") || (player1[1]!="R" && player1[1]!="S" &&player1[1]!="P")
      raise NoSuchStrategyError, "Strategy must be one of R,P,S" 
    end
   
    
     if player1[1] == player2[1]
      return player1
    end
      
    if player1[1] == "R" && player2[1] == "S"
      return player1
    else
      return player2
    end
       
    if player1[1] == "R" && player2[1] == "P"
      return player2
    else
      return player1
    end
    
    if player1[1] == "S" && player2[1] == "P"
      return player1
    else 
      return player2
    end
    if player1[1] == "S" && player2[1] == "R"
      return player2
    else 
      return player1
    end
    
    if player1[1] == "P" && player2[1] == "R"
      return player1 
    else
      return player2  
    end 
     if player1[1] == "P" && player2[1] == "s"
      return player2 
    else
      return player1  
     end  
end
    
    def self.tournament_winner(tournament)
    
    end
end




#น.ส.รุจิรางค์ ไวยดารา 5510613275
#นายธนกร เหลืองขจรวิทย์ 5510613309

class RockPaperScissors
  class NoSuchStrategyError < StandardError ; end
 
def self.winner(player1, player2)
    if (player2[1]!="R" && player2[1]!="S" &&player2[1]!="P") || (player1[1]!="R" && player1[1]!="S" &&player1[1]!="P")
      raise NoSuchStrategyError, "Strategy must be one of R,P,S" 
    end
   
    
    if player1[1] == player2[1]
      return player1
    end
    
     if player1[1]=="S"
      if player2[1]=="R"
        return player2
      else
        return player1
      end
    end
    
    if player1[1]=="R"
      if player2[1]=="S"
        return player1
      else
        return player2
      end
    end
   
    if player1[1]=="P"
      if player2[1]=="R"
        return player1
      else
        return player2
      end
    end
 end
    
    def self.tournament_winner(tournament)
  if tournament[0][0].is_a? String
      return winner(tournament[0],tournament[1])
      # base case
   end
    roundA=tournament_winner(tournament[0])
    roundB=tournament_winner(tournament[1])
    winwin=winner(roundA,roundB)
    return winwin

    end
end

