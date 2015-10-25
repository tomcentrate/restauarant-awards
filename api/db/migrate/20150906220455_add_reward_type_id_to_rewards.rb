class AddRewardTypeIdToRewards < ActiveRecord::Migration
  def change
    add_reference :rewards, :reward_type
  end
end
