class Player < ActiveRecord::Base
    belongs_to :team, :class_name => 'Team', :foreign_key =>'team_id'
	#belongs_to :parent, :class_name => 'Parent', :foreign_key =>'parent_id'
    belongs_to :parent
    
	
	#Validation checks
	validates :email, uniqueness: {
	message: "is already in use. There is already a player registered with this email address."}, if: :senior_member?
	#validates :parent_id, presence: true, if: :senior_member?
    validates :first_name, :length => {maximum: 50}, presence: true
    validates :surname, :length => {maximum: 50}, presence: true
    validates :address, :length => {maximum: 50}, presence: true
    validates :contact_phone, :length => {maximum: 50}, presence: true
    validates :email, confirmation: true
    validates :email_confirmation, presence: true
    validates :school, :length => {maximum: 50}, presence: true, if: :senior_member?
    validates :school_year, :numericality => {:greater_than => 0}, presence: true, if: :senior_member?
    validates :school_next_year, :length => {maximum: 50}, presence: true, if: :senior_member?
    validates :grade_last_season, :length => {maximum: 50}, presence: true
    validates :notes, :length => {maximum: 500}
    #validates :team_id_last_season
	#validates :team_id
    #validates :parent_id
    
	def senior_member?
		senior != true
	end
end
