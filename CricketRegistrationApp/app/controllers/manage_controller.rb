class ManageController < ApplicationController
    
respond_to :json
    
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
       
  def gogo
      @playerid = params[:playerid]
      @teamid = params[:teamid]
      
      update_player(@teamid, @playerid)
      respond_to do |format|
        format.html { render 'foo' }
      end
  end    
    
  helper_method :generateTeams
    
  def update_player(teamid, playerid)
      player = Player.find(playerid)
      player.team_id = teamid   
      player.save(:validate => false)
      
  end 
  helper_method :update_player
end
