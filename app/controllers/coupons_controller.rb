require 'pry'

class CouponsController < ApplicationController 

    def index
    end

    def new 
    end

    def show
        @coupon = Coupon.find_by_id(params[:id])
    end

    def create
        coupon = Coupon.new
        coupon.coupon_code = params[:coupon][:coupon_code]
        coupon.store = params[:coupon][:store]
        coupon.save 
        redirect_to coupon 
    end

end