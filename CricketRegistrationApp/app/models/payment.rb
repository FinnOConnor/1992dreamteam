class Payment < ActiveRecord::Base
    has_many :players, :class_name => 'Player', :foreign_key =>'player_id'
    
#    validates :season
#    validates :amount_due
#    validates :amount_paid
#    validates :paid
#    validates :player_id
end
