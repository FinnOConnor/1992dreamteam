class Coach < ActiveRecord::Base
	has_one :team
	
	#Validation checks
	validates :email, :confirmation => true

end
