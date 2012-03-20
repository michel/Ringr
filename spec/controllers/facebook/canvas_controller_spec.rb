require 'spec_helper'

describe Facebook::CanvasController do
  describe "#index" do
    let(:victim) { mock_model(Victim) }

    it "creates a new victim" do
      Victim.should_receive(:new)

      get :index
    end

    it "assigns the victim to @victim" do
      Victim.stub(:new).and_return(victim)

      get :index

      assigns(:victim).should eql(victim)
    end
  end
end
