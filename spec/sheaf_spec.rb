#coding:utf-8
require 'spec_helper'

describe Sheaf do
  describe "#create" do
    context "receive path of Amazon TSV" do
      it "should return instance of Sheaf::Amazon" do
        pending "wait for imprementation of Resident"
        @sheaf = Sheaf.create("spec/files/amazon_order_file.txt")
        @sheaf.class.should == Sheaf::Parser::Amazon
      end
    end

    context "receive invalid path" do
      it "should raise TypeError" do
        lambda{ Sheaf.create("spec/files/invalid_file.jpg") }.should raise_error(TypeError)
      end
    end
  end
end
