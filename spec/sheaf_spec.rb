#coding:utf-8
require 'spec_helper'

describe Sheaf do
  describe "#create" do
    context "receive Amazon TSV" do
      it "should return instance of Sheaf::Amazon" do
        @sheaf = Sheaf.create("spec/files/amazon_order_file.txt")
        @sheaf.class.should == Sheaf::Amazon
      end
    end
  end
end
