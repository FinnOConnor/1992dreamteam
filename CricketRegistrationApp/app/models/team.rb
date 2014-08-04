class Team < ActiveRecord::Base
	belongs_to :coach, :class_name => 'Coach', :foreign_key =>'coach_id'
	has_many :players
	
	# Validation checks
	validates :name, uniqueness: {case_sensitive: false}
	validates :name, :length => {:minimum => 2}
	validates :grade, presence: true
end
