# -*- coding: utf-8 -*-
require 'spec_helper'

describe Sheaf::Order do
  before do
    @order = Sheaf::Order.new(
                              number:         "123456789",
                              order_datetime: Time.local(2013,2,28,11,22,33),
                              payment_method: :credit_card,
                              payment_status: :paid,
                              used_point:     123,
                              shipping_price: 630,
                              comment:        "This is a comment.",
                              customer: {
                                name:         "ARAMAKI Daisuke",
                                phone_number: "000-1111-2222",
                                postal_code:  "000-0000",
                                address:      "兵庫県神戸市中央区東川崎町一丁目1234-5678"

                              }
                              )
  end

  describe "#number" do
    it "should return order number" do
      @order.number.should == "123456789"
    end
  end

  describe "#order_datetime" do
    it "should return order datetime" do
      @order.order_datetime.should == Time.local(2013,2,28,11,22,33)
    end
  end

  describe "#payment_method" do
    it "should return payment method" do
      @order.payment_method.should == :credit_card
    end
  end

  describe "#payment_status" do
    it "should return payment status" do
      @order.payment_status.should == :paid
    end
  end

  describe "#used_point" do
    it "should return used point" do
      @order.used_point.should == 123
    end
  end

  describe "#shipping_price" do
    it "should return shipping price" do
      @order.shipping_price.should == 630
    end
  end

  describe "#comment" do
    it "should return comment" do
      @order.comment.should == "This is a comment."
    end
  end

  describe "#customer" do
    it "should return instance of Resident" do
      @order.customer.class.should == Sheaf::Resident
    end
  end
end
