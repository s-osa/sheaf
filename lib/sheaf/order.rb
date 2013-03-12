#coding:utf-8

class Sheaf::Order
  def initialize(params)
    @number         = params[:number]
    @order_datetime = params[:order_datetime]
    @payment_method = params[:payment_method]
    @payment_status = params[:payment_status]
    @used_point     = params[:used_point]
    @shipping_price = params[:shipping_price]
    @comment        = params[:comment]
  end

  attr_accessor :number, :order_datetime, :payment_method, :payment_status, :used_point, :shipping_price, :comment
end
