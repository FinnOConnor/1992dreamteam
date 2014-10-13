class Grade < ActiveRecord::Base
    has_many :teams
    has_many :players
    #Validations
    validates :grade_name, :length => {maximum: 50}, presence: true, uniqueness: {case_sensitive: false}
    validates :min_size, :numericality => { :greater_than => 0, :less_than_or_equal_to => :max_size}
    validates :max_size, :numericality => { :less_than => 50, :greater_than_or_equal_to => :min_size }
    validates :min_age, :numericality => { :greater_than => 0, :less_than_or_equal_to => :max_age }
    validates :max_age, :numericality => { :less_than => 150, :greater_than_or_equal_to => :min_age }
end
