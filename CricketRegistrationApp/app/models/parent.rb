class Parent < ActiveRecord::Base
    has_many :players
    belongs_to :coach, :class_name =>'Coach', :foreign_key =>'coach_id' 
	accepts_nested_attributes_for :players
end
