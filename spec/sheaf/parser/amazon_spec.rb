#coding:utf-8
require 'spec_helper'

describe Sheaf::Parser::Amazon do
  FilePath = "spec/files/amazon_order_file.txt"
  
  describe "#new" do
    it "should return instance of Sheaf::Parser::Amazon" do
      @sheaf = Sheaf::Parser::Amazon.new(FilePath)
      @sheaf.class.should == Sheaf::Parser::Amazon
    end
  end

  describe "#csv" do
    it "should return instance of CSV::Table" do
      @sheaf = Sheaf::Parser::Amazon.new(FilePath)
      @sheaf.csv.class.should == CSV::Table
    end
  end
end
