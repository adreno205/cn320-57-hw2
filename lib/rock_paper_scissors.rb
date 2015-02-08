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
     if player1[1] == "P" && player2[1] == "S"
      return player2 
    else
      return player1  
     end  
end
    
    def self.tournament_winner(tournament)
   if tournament[0][0].is_a? String
      return winner(tournament[0],tournament[1])
      # base case
   end
    win1=tournament_winner(tournament[0])
    win2=tournament_winner(tournament[1])
    w=winner(win1,win2)
    return w

    end
end

