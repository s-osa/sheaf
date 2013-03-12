#coding:utf-8

describe Sheaf::Resident do
  before do
    @resident = Sheaf::Resident.new(
                                    name:         "ARAMAKI Daisuke",
                                    email:        "aramaki@example.com",
                                    phone_number: "000-0000-0000",
                                    postal_code:  "000-0000",
                                    address:      "兵庫県神戸市中央区東川崎町一丁目1234-5678"
                                    )
  end

  describe "#name" do
    it "should return name" do
      @resident.name.should == "ARAMAKI Daisuke"
    end
  end

  describe "#email" do
    it "should return email" do
      @resident.email.should == "aramaki@example.com"
    end
  end

  describe "#phone_number" do
    it "should return email" do
      @resident.phone_number.should == "000-0000-0000"
    end
  end

  describe "#postal_code" do
    it "should return postal_code" do
      @resident.postal_code.should == "000-0000"
    end
  end

  describe "#address" do
    it "should return address" do
      @resident.address.should == "兵庫県神戸市中央区東川崎町一丁目1234-5678"
    end
  end
end
