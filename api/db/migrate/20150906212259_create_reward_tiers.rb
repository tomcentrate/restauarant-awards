class CreateRewardTiers < ActiveRecord::Migration
  def change
    create_table :reward_tiers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
