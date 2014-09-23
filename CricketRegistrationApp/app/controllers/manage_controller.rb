class ManageController < ApplicationController
  helper_method :resetCounter, :incrementCounter
  counter = 0;
    
  def index
      @search = Team.search(params[:q])
      @search1 = Player.search(params[:q])
      @grades = Grade.all
      @players = @search1.result
     @teams = @search.result
      
      @counter = @counter
      
      
  end
    
  def incrementCounter
      @counter = @counter + 1
  end 
    
  def resetCounter
      @counter = 0
  end    
end
