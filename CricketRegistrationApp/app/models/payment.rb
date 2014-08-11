class Payment < ActiveRecord::Base
    has_many :player, :class_name => 'Player', :foreign_key =>'player_id'
end
