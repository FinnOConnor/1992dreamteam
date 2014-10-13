class Parent < ActiveRecord::Base 
    has_many :players
    belongs_to :coach, :class_name =>'Coach', :foreign_key =>'coach_id' 
	accepts_nested_attributes_for :players, reject_if: :all_blank
    #validates_associated :players, presence: true
    validates_presence_of :p_mobile_phone, :unless => :p_home_phone?
    validates_presence_of :p_home_phone, :unless => :p_mobile_phone?
    #validates_presence_of :s_mobile_phone, :unless => :s_home_phone?
    #validates_presence_of :s_home_phone, :unless => :s_mobile_phone?
    
    
    #Validation
    validates :p_first_name, :length => {maximum: 50}, presence: true
    validates :p_surname, :length => {maximum: 50}, presence: true
    validates :p_address, :length => {maximum: 50}, presence: true
    validates :p_home_phone, :length => {in: 7..50}, :allow_blank => true 
    validates :p_mobile_phone, :length => {in: 7..50}, :allow_blank => true 
    #validates :p_email, confirmation: true
    #validates :p_email_confirmation, presence: true
    
    #validates :s_first_name, :length => {maximum: 50}
    #validates :s_surname, :length => {maximum: 50}, :if => :s_first_name?
    #validates :s_address, :length => {maximum: 50}, :if => :s_first_name?
    #validates :s_home_phone, :length => {in: 7..50}, :allow_blank => true , :if => :s_first_name?
    #validates :s_mobile_phone, :length => {in: 7..50}, :allow_blank => true , :if => :s_first_name?
    #validates :s_email, confirmation: true
    #validates :s_email_confirmation, presence: true
    #validates :coach_id
end
