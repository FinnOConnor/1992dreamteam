class ManageController < ApplicationController
  def index
      @search = Team.search(params[:q])
      @search1 = Player.search(params[:q])
      @players = @search1.result
     @teams = @search.result
  end
end
