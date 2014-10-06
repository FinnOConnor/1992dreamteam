class ManageController < ApplicationController
    
respond_to :json
    
  def index
      @search = Player.search(params[:q])
      @grades = Grade.all
      
      @players = @search.result
      @counter = @counter
      
  end
	
  def generate
  
  end
  
  def gogo
      $num = params[:length].to_i
      $i = 0
      while $i < $num do
          
            @teamid = params[:stack][$i.to_s][0].to_i
            @playerid = params[:stack][$i.to_s][1].to_i
          
            if @teamid < 0 then
                @teamid = nil 
            end
      
            update_player(@teamid, @playerid)
          
            $i = $i + 1
      end
      
      respond_to do |format|
        format.json { head :ok }
      end
  end    
    
    
  def update_player(teamid, playerid)
      p ["Updating Player with PlayerID ",playerid," TeamID ",teamid].join("")
      
      player = Player.find(playerid)
      player.team_id = teamid   
      player.save(:validate => false)
      
      p "Update Player Finished"
  end 
  helper_method :update_player
end
