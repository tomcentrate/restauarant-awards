json.array!(@reward_tiers) do |reward_tier|
  json.extract! reward_tier, :id, :name
  json.url reward_tier_url(reward_tier, format: :json)
end
