require 'spec_helper'

describe Victim do
  describe "validations" do
    it { validate_presence_of(:name) }

    it "is invalid when not only numbers are given as a telephone nr." do
      Factory.build(:victim, telephone_number: "abcdefgh").should_not be_valid
      Factory.build(:victim, telephone_number: "012345678a").should_not be_valid
    end

    it "is invalid when it's shorter than 8 numbers" do
      Factory.build(:victim, telephone_number: "0123456").should_not be_valid
      Factory.build(:victim, telephone_number: 0).should_not be_valid
    end

    it "is invalid when it's longer than 10 numbers" do
      Factory.build(:victim, telephone_number: 12345678910).should_not be_valid
      Factory.build(:victim, telephone_number: 1234567891011).should_not be_valid
    end

    it "is valid when 8 to 10 numbers are given" do
      Factory.build(:victim, telephone_number: 1234567)
      Factory.build(:victim, telephone_number: 12345678)
      Factory.build(:victim, telephone_number: 123456789)
    end
  end
end
