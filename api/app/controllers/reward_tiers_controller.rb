class RewardTiersController < ApplicationController
  before_action :set_reward_tier, only: [:show, :edit, :update, :destroy]

  # GET /reward_tiers
  # GET /reward_tiers.json
  def index
    @reward_tiers = RewardTier.all
  end

  # GET /reward_tiers/1
  # GET /reward_tiers/1.json
  def show
  end

  # GET /reward_tiers/new
  def new
    @reward_tier = RewardTier.new
  end

  # GET /reward_tiers/1/edit
  def edit
  end

  # POST /reward_tiers
  # POST /reward_tiers.json
  def create
    @reward_tier = RewardTier.new(reward_tier_params)

    respond_to do |format|
      if @reward_tier.save
        format.html { redirect_to @reward_tier, notice: 'Reward tier was successfully created.' }
        format.json { render :show, status: :created, location: @reward_tier }
      else
        format.html { render :new }
        format.json { render json: @reward_tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reward_tiers/1
  # PATCH/PUT /reward_tiers/1.json
  def update
    respond_to do |format|
      if @reward_tier.update(reward_tier_params)
        format.html { redirect_to @reward_tier, notice: 'Reward tier was successfully updated.' }
        format.json { render :show, status: :ok, location: @reward_tier }
      else
        format.html { render :edit }
        format.json { render json: @reward_tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reward_tiers/1
  # DELETE /reward_tiers/1.json
  def destroy
    @reward_tier.destroy
    respond_to do |format|
      format.html { redirect_to reward_tiers_url, notice: 'Reward tier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward_tier
      @reward_tier = RewardTier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reward_tier_params
      params.require(:reward_tier).permit(:name)
    end
end
