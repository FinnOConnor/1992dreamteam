class AdminController < ApplicationController
  def index
	  @teams = Team.all
	  @players = Player.all
	  @parents = Parent.all
	  @coaches = Coach.all
  end

  def assign_grade
        Player.all.each do |player|
            player.grade_id = nil
            if(player.grade == nil)
               Grade.all.each do |grade|
                   p ["min :",grade.min_age,"max :",grade.max_age,player.age()].join(' ')
                    if(player.age() >= grade.min_age && player.age() <= grade.max_age)
                        player.grade_id = grade.id
                        break
                    end
                end
            end
            player.save(:validate => false)
        end
  end
  
  # Assigning Players to Teams based on the Players' and Teams' grades #
  def assign
      assign_grade
  	Player.all.each do |player|
  		team = Team.where(:grade_id => player.grade_id)
        team.all.each do |t|
           p [player.first_name,t.id].join(' ') 
        end
  		player.team_id = team.first.id unless team.blank?
  		player.email_confirmation = player.email
  		player.save(:validate => false)
  	end
  	@player = Player.all
  end
end
