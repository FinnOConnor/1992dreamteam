class Team < ActiveRecord::Base
	belongs_to :coach, :class_name => 'Coach', :foreign_key =>'coach_id'
	has_many :players
	
	# Validation checks
	validates :name, uniqueness: {case_sensitive: false}, :length => {maximum: 50}, presence: true
    validates :grade, :length => {maximum: 50}, :uniqueness => true, presence: true
end
