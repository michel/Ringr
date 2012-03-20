require 'spec_helper'

describe Facebook::VictimsController do
  describe "#create" do
    context "with a valid victim" do
      let(:valid_victim) { {"name" => "irwin", "telephone_number" => "6804281741"} }

      it "creates the victim" do
        Victim.should_receive(:create).with(valid_victim)

        post :create, victim: valid_victim
      end

      it "redirects back to facebook root" do
        post :create, victim: valid_victim

        response.should redirect_to(facebook_root_path)
      end
    end
  end
end
