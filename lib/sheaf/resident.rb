#coding:utf-8

class Sheaf::Resident
  def initialize(params)
    @name         = params[:name]
    @email        = params[:email]
    @phone_number = params[:phone_number]
    @postal_code  = params[:postal_code]
    @address      = params[:address]
  end

  attr_accessor :name, :email, :phone_number, :postal_code, :address
end
