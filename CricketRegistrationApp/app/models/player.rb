class Player < ActiveRecord::Base
	belongs_to :team, :class_name => 'Team', :foreign_key =>'team_id'
	belongs_to :parent, :class_name => 'Parent', :foreign_key =>'parent_id'
	
	#Validation checks
	validates :email, uniqueness: {
	message: "is already in use. There is already a player registered with this email address."}
	validates :parent_id, presence: true, if: :senior_member?
	
	def senior_member?
		senior != true
	end
	
end
