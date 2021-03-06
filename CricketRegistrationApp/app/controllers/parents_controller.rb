class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update, :destroy]

  # GET /parents
  # GET /parents.json
  def index
    #@parents = Parent.all
	@search = Parent.search(params[:q])
     @parents = @search.result
	 @search.build_condition
  end

  # GET /parents/1
  # GET /parents/1.json
  def show
  end

  # GET /parents/new
  def new
    @parent = Parent.new
            
  end
  # This method will assign parents contact details to the junior player registered to it. 
  def assign_parent_details
      @parent.players.each do |player|
        player.email = @parent.p_email
        player.email_confirmation = @parent.p_email
        player.contact_phone = @parent.p_home_phone || @parent.p_mobile_phone
        player.address = @parent.p_address
      end
  end

  # GET /parents/1/edit
  def edit
  end

  # POST /parents
  # POST /parents.json
  def create
    @parent = Parent.new(parent_params)
    assign_parent_details

    respond_to do |format|
      if @parent.save
        #format.html { redirect_to @parent, notice: 'Parent was successfully created.' }
        #format.json { render :show, status: :created, location: @parent }
		format.html { redirect_to :back }
      else
        format.html { render :new }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parents/1
  # PATCH/PUT /parents/1.json
  def update
    respond_to do |format|
        
      if @parent.update(parent_params)
        format.html { redirect_to @parent, notice: 'Parent was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent }
      else
        format.html { render :edit }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parents/1
  # DELETE /parents/1.json
  def destroy
    @parent.destroy
    respond_to do |format|
      format.html { redirect_to parents_url, notice: 'Parent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent
      @parent = Parent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_params
      params.require(:parent).permit(:p_first_name, :p_surname, :p_gender, :p_address, :p_home_phone, :p_mobile_phone, :p_email, :p_email_confirmation, :s_first_name, :s_surname, :s_gender, :s_address, :s_home_phone, :s_mobile_phone, :s_email, :s_email_confirmation, :coach_id,
          players_attributes: [:id, :first_name, :surname, :gender, :date_of_birth, :address, :contact_phone, :email, :email_confirmation, :school, :school_year, :school_next_year, :grade_last_season, :senior, :notes, :team_id_last_season, :team_id, :parent_id])
    end
end
