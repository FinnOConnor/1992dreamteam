class AdminController < ApplicationController
  def index
	  @teams = Team.all
	  @players = Player.all
	  @parents = Parent.all
  end
end
