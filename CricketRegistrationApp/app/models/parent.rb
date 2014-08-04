class Parent < ActiveRecord::Base
	has_many :players
	
	#Validation Checks
	validates :email, :confirmation => true
end
