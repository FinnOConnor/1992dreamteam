class AdminController < ApplicationController
  def index
	  @teams = Team.all
	  @players = Player.all
	  @parents = Parent.all
	  @coaches = Coach.all
  end
end
