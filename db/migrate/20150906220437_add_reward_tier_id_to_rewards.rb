class AddRewardTierIdToRewards < ActiveRecord::Migration
  def change
    add_reference :rewards, :reward_tier
  end
end
