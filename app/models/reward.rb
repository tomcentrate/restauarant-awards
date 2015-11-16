class Reward < ActiveRecord::Base
  belongs_to :reward_type
  belongs_to :reward_tier
end
