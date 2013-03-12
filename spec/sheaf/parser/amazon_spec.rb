#coding:utf-8
require 'spec_helper'

describe Sheaf::Parser::Amazon do
  before do
    pending "wait for imprementation of Resident"
    filepath = "spec/files/amazon_order_file.txt"
    @sheaf   = Sheaf::Parser::Amazon.new(filepath)
  end

  describe "#new" do
    it "should return instance of Sheaf::Parser::Amazon" do
      @sheaf.class.should == Sheaf::Parser::Amazon
    end
  end

  describe "#csv" do
    it "should return instance of CSV::Table" do
      @sheaf.csv.class.should == CSV::Table
    end
  end

  describe "#orders" do
    it "should return instances of Sheaf::Order" do
      @sheaf.orders.all?{|order| order.class == Sheaf::Order }.should be_true
    end
  end
end
