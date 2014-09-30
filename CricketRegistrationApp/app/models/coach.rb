class Coach < ActiveRecord::Base
	has_one :team
    has_one :parent
	validates_presence_of :mobile_phone, :unless => :home_phone?
    validates_presence_of :home_phone, :unless => :mobile_phone?
    
	#Validation checks
	validates :email, confirmation: true
    validates :email_confirmation, presence: true
    validates :first_name, :length => {maximum: 50}, presence: true
    validates :surname, :length => {maximum: 50}, presence: true
    validates :address, :length => {maximum: 50}, presence: true
    validates :home_phone, :length => {in: 7..50}, :allow_blank => true 
    validates :mobile_phone, :length => {in: 7..50}, :allow_blank => true 
	
	def name
      "#{self.first_name} #{self.surname}"
    end

    def name=(fullname)
      first,last = fullname.split(' ')
      self.first_name = first
      self.surname = last
    end	
	
end
