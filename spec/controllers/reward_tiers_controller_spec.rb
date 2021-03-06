require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe RewardTiersController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # RewardTier. As you add validations to RewardTier, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {name: "Small"}
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RewardTiersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all reward_tiers as @reward_tiers" do
      reward_tier = RewardTier.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:reward_tiers)).to eq([reward_tier])
    end
  end

  describe "GET #show" do
    it "assigns the requested reward_tier as @reward_tier" do
      reward_tier = RewardTier.create! valid_attributes
      get :show, {:id => reward_tier.to_param}, valid_session
      expect(assigns(:reward_tier)).to eq(reward_tier)
    end
  end

  describe "GET #new" do
    it "assigns a new reward_tier as @reward_tier" do
      get :new, {}, valid_session
      expect(assigns(:reward_tier)).to be_a_new(RewardTier)
    end
  end

  describe "GET #edit" do
    it "assigns the requested reward_tier as @reward_tier" do
      reward_tier = RewardTier.create! valid_attributes
      get :edit, {:id => reward_tier.to_param}, valid_session
      expect(assigns(:reward_tier)).to eq(reward_tier)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new RewardTier" do
        expect {
          post :create, {:reward_tier => valid_attributes}, valid_session
        }.to change(RewardTier, :count).by(1)
      end

      it "assigns a newly created reward_tier as @reward_tier" do
        post :create, {:reward_tier => valid_attributes}, valid_session
        expect(assigns(:reward_tier)).to be_a(RewardTier)
        expect(assigns(:reward_tier)).to be_persisted
      end

      it "redirects to the created reward_tier" do
        post :create, {:reward_tier => valid_attributes}, valid_session
        expect(response).to redirect_to(RewardTier.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved reward_tier as @reward_tier" do
        post :create, {:reward_tier => invalid_attributes}, valid_session
        expect(assigns(:reward_tier)).to be_a_new(RewardTier)
      end

      it "re-renders the 'new' template" do
        post :create, {:reward_tier => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {name: "Smaller"}
      }

      it "updates the requested reward_tier" do
        reward_tier = RewardTier.create! valid_attributes
        put :update, {:id => reward_tier.to_param, :reward_tier => new_attributes}, valid_session
        reward_tier.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested reward_tier as @reward_tier" do
        reward_tier = RewardTier.create! valid_attributes
        put :update, {:id => reward_tier.to_param, :reward_tier => valid_attributes}, valid_session
        expect(assigns(:reward_tier)).to eq(reward_tier)
      end

      it "redirects to the reward_tier" do
        reward_tier = RewardTier.create! valid_attributes
        put :update, {:id => reward_tier.to_param, :reward_tier => valid_attributes}, valid_session
        expect(response).to redirect_to(reward_tier)
      end
    end

    context "with invalid params" do
      it "assigns the reward_tier as @reward_tier" do
        reward_tier = RewardTier.create! valid_attributes
        put :update, {:id => reward_tier.to_param, :reward_tier => invalid_attributes}, valid_session
        expect(assigns(:reward_tier)).to eq(reward_tier)
      end

      it "re-renders the 'edit' template" do
        reward_tier = RewardTier.create! valid_attributes
        put :update, {:id => reward_tier.to_param, :reward_tier => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested reward_tier" do
      reward_tier = RewardTier.create! valid_attributes
      expect {
        delete :destroy, {:id => reward_tier.to_param}, valid_session
      }.to change(RewardTier, :count).by(-1)
    end

    it "redirects to the reward_tiers list" do
      reward_tier = RewardTier.create! valid_attributes
      delete :destroy, {:id => reward_tier.to_param}, valid_session
      expect(response).to redirect_to(reward_tiers_url)
    end
  end

end
