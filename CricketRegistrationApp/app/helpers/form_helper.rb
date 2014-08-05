# app/helpers/form_helper.rb
module FormHelper
  def setup_parent(parent)
	 
    parent.players.build
    parent
  end
end