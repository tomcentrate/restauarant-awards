class RewardTypesController < ApplicationController
  before_action :set_reward_type, only: [:show, :edit, :update, :destroy]

  # GET /reward_types
  # GET /reward_types.json
  def index
    @reward_types = RewardType.all
  end

  # GET /reward_types/1
  # GET /reward_types/1.json
  def show
  end

  # GET /reward_types/new
  def new
    @reward_type = RewardType.new
  end

  # GET /reward_types/1/edit
  def edit
  end

  # POST /reward_types
  # POST /reward_types.json
  def create
    @reward_type = RewardType.new(reward_type_params)

    respond_to do |format|
      if @reward_type.save
        format.html { redirect_to @reward_type, notice: 'Reward type was successfully created.' }
        format.json { render :show, status: :created, location: @reward_type }
      else
        format.html { render :new }
        format.json { render json: @reward_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reward_types/1
  # PATCH/PUT /reward_types/1.json
  def update
    respond_to do |format|
      if @reward_type.update(reward_type_params)
        format.html { redirect_to @reward_type, notice: 'Reward type was successfully updated.' }
        format.json { render :show, status: :ok, location: @reward_type }
      else
        format.html { render :edit }
        format.json { render json: @reward_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reward_types/1
  # DELETE /reward_types/1.json
  def destroy
    @reward_type.destroy
    respond_to do |format|
      format.html { redirect_to reward_types_url, notice: 'Reward type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward_type
      @reward_type = RewardType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reward_type_params
      params.require(:reward_type).permit(:name, :description)
    end
end
