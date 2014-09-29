class Payment < ActiveRecord::Base
    belongs_to :player, :class_name => 'Player', :foreign_key =>'player_id'
    
    validates :season, presence: true
    validates :amount_due, presence: true
    validates :amount_paid, :numericality => { :less_than_or_equal_to => :amount_due }
#    validates :paid
    validates :player_id, presence: true
end
