class ManageController < ApplicationController
  def index
      @search = Team.search(params[:q])
      @search1 = Player.search(params[:q])
      @grades = Grade.all
      @players = @search1.result
     @teams = @search.result
      
      @counter = @counter 
  end
	
  def generate
  
  end
  
  def generateTeams
    
	
	Player.all.each do |player|
	
	end
	
  end
<<<<<<< HEAD
  helper_method :generateTeams
  
=======
    
  def update_player(teamid, playerid)
      player = Player.find(playerid)
      player.team_id = teamid   
      player.save(:validate => false)
      
  end 
  helper_method :update_player
>>>>>>> origin/master
end
