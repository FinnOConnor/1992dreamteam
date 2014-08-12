class Coach < ActiveRecord::Base
	has_one :team
    has_one :parent
	
	#Validation checks
	validates :email, confirmation: true
    validates :email_confirmation, presence: true
    validates :first_name, :length => {maximum: 50}, presence: true
    validates :surname, :length => {maximum: 50}, presence: true
    validates :address, :length => {maximum: 50}, presence: true
    validates :home_phone, :length => {maximum: 50}, presence: true
    validates :mobile_phone, :length => {maximum: 50}, presence: true
end
