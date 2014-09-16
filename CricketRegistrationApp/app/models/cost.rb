class Cost < ActiveRecord::Base
	#Validation checks
    validates :name, presence: true
    validates :price, presence: true
end
