class Player < ActiveRecord::Base
    belongs_to :team, :class_name => 'Team', :foreign_key =>'team_id'
	#belongs_to :parent, :class_name => 'Parent', :foreign_key =>'parent_id'
    belongs_to :parent
    belongs_to :grade, :class_name => 'Grade', :foreign_key =>'grade_id'
	
	#Validation checks
	validates :email, uniqueness: {
	message: "is already in use. There is already a player registered with this email address."}, unless: :senior_member?
	#validates :parent_id, presence: true, if: :senior_member?
    validates :first_name, :length => {maximum: 50}, presence: true
    validates :surname, :length => {maximum: 50}, presence: true
    validates :address, :length => {maximum: 50}, presence: true
    validates :contact_phone, :length => {in: 7..50}, presence: true, unless: :senior_member?
    validates :email, confirmation: true, if: :senior_member?
    #validates :email_confirmation, presence: true, if: :senior_member?
    validates :school, :length => {maximum: 50}, presence: true, if: :senior_member?
    validates :school_year, :numericality => {:greater_than => 0}, presence: true, if: :senior_member?
    validates :school_next_year, :length => {maximum: 50}, presence: true, if: :senior_member?
    #validates :grade_last_season, :length => {maximum: 50}, presence: true
    validates :notes, :length => {maximum: 500}
    #validates :team_id_last_season
	#validates :team_id
    #validates :parent_id
    
	def senior_member?
		senior != true
	end
    
	def name
      "#{self.first_name} #{self.surname}"
    end

    def name=(fullname)
      first,last = fullname.split(' ')
      self.first_name = first
      self.surname = last
    end
    
    def age()
        dob = self.date_of_birth
        now = Time.now.utc.to_date
        now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end
    
end
