class Coach < ActiveRecord::Base
	has_one :team
    has_one :parent
	
	#Validation checks
	validates :email, :confirmation => true

end
