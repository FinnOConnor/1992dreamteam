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
end
