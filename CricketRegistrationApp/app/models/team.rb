class Team < ActiveRecord::Base
	belongs_to :coach, :class_name => 'Coach', :foreign_key =>'coach_id'
    belongs_to :grade, :class_name => 'Grade', :foreign_key =>'grade_id'
	has_many :players
	
	# Validation checks
	validates :name, uniqueness: {case_sensitive: false}, :length => {maximum: 50}, presence: true
    validates :grade, :numericality => {:greater_than => 0}, presence: true
end
