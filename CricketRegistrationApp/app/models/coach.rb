class Coach < ActiveRecord::Base
	has_one :team
    belongs_to :parent, :class_name =>'Parent'
	
	#Validation checks
	validates :email, :confirmation => true

end
